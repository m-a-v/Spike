package display.settings.share
{
	import flash.system.System;
	
	import databaseclasses.CommonSettings;
	
	import display.LayoutFactory;
	
	import feathers.controls.Button;
	import feathers.controls.List;
	import feathers.controls.TextInput;
	import feathers.controls.ToggleSwitch;
	import feathers.controls.renderers.DefaultListItemRenderer;
	import feathers.controls.renderers.IListItemRenderer;
	import feathers.data.ArrayCollection;
	import feathers.events.FeathersEventType;
	import feathers.layout.HorizontalAlign;
	import feathers.themes.BaseMaterialDeepGreyAmberMobileTheme;
	
	import model.ModelLocator;
	
	import services.DexcomShareService;
	import services.NightScoutService;
	
	import starling.events.Event;
	
	import utils.Constants;

	public class NightscoutSettingsList extends List 
	{
		/* Display Objects */
		private var nsToggle:ToggleSwitch;
		private var nsURL:TextInput;
		private var nsAPISecret:TextInput;
		private var nsLogin:Button;
		
		/* Properties */
		public var needsSave:Boolean = false;
		private var isNSEnabled:Boolean;
		private var selectedURL:String;
		private var selectedAPISecret:String;
		
		[ResourceBundle("sharesettingsscreen")]
		
		public function NightscoutSettingsList()
		{
			super();
		}
		override protected function initialize():void 
		{
			super.initialize();
			
			setupProperties();
			setupInitialState();
			setupContent();
		}
		
		private function setupProperties():void
		{
			//Set Properties
			clipContent = false;
			isSelectable = false;
			autoHideBackground = true;
			hasElasticEdges = false;
			paddingBottom = 5;
			width = Constants.stageWidth - (2 * BaseMaterialDeepGreyAmberMobileTheme.defaultPanelPadding);
		}
		
		private function setupInitialState():void
		{
			/* Get data from database */
			isNSEnabled = CommonSettings.getCommonSetting(CommonSettings.COMMON_SETTING_NIGHTSCOUT_ON) == "true";
			selectedURL = CommonSettings.getCommonSetting(CommonSettings.COMMON_SETTING_AZURE_WEBSITE_NAME);
			selectedAPISecret = CommonSettings.getCommonSetting(CommonSettings.COMMON_SETTING_API_SECRET);
		}
		
		private function setupContent():void
		{
			//On/Off Toggle
			nsToggle = LayoutFactory.createToggleSwitch(isNSEnabled);
			nsToggle.addEventListener( Event.CHANGE, onNightscoutOnOff );
			
			//URL
			nsURL = LayoutFactory.createTextInput(false, false, 220, HorizontalAlign.RIGHT);
			nsURL.text = selectedURL;
			nsURL.addEventListener( FeathersEventType.ENTER, onTextInputEnter );
			nsURL.addEventListener(Event.CHANGE, onSettingsChanged);
			
			//API Secret
			nsAPISecret = LayoutFactory.createTextInput(true, false, 140, HorizontalAlign.RIGHT);
			nsAPISecret.text = selectedAPISecret;
			nsAPISecret.addEventListener( FeathersEventType.ENTER, onTextInputEnter );
			nsAPISecret.addEventListener(Event.CHANGE, onSettingsChanged);
			
			//Login
			nsLogin = LayoutFactory.createButton(ModelLocator.resourceManagerInstance.getString('sharesettingsscreen','login_button_label'));
			nsLogin.addEventListener(Event.TRIGGERED, onNightscoutLogin);
			
			//Set Item Renderer
			itemRendererFactory = function():IListItemRenderer
			{
				var itemRenderer:DefaultListItemRenderer = new DefaultListItemRenderer();
				itemRenderer.labelField = "label";
				itemRenderer.accessoryField = "accessory";
				return itemRenderer;
			};
			
			//Define Nightscout Settings Data
			reloadNightscoutSettings(nsToggle.isSelected);
		}
		
		public function save():void
		{
			//Nightscout
			var nsEnabledValue:String;
			
			if (isNSEnabled) nsEnabledValue = "true";
			else nsEnabledValue = "false";
			
			if (CommonSettings.getCommonSetting(CommonSettings.COMMON_SETTING_NIGHTSCOUT_ON) != nsEnabledValue)
				CommonSettings.setCommonSetting(CommonSettings.COMMON_SETTING_NIGHTSCOUT_ON, nsEnabledValue);
			
			//API Secret
			if (CommonSettings.getCommonSetting(CommonSettings.COMMON_SETTING_API_SECRET) != selectedAPISecret)
				CommonSettings.setCommonSetting(CommonSettings.COMMON_SETTING_API_SECRET, selectedAPISecret);
			
			//URL
			if (CommonSettings.getCommonSetting(CommonSettings.COMMON_SETTING_AZURE_WEBSITE_NAME) != selectedURL)
				CommonSettings.setCommonSetting(CommonSettings.COMMON_SETTING_AZURE_WEBSITE_NAME, selectedURL);
			
			needsSave = false;
		}
		
		private function onSettingsChanged():void
		{
			selectedAPISecret = nsAPISecret.text;
			selectedURL = nsURL.text;
			
			needsSave = true;
		}
		
		private function onNightscoutOnOff(event:Event):void
		{
			isNSEnabled = nsToggle.isSelected;
			
			reloadNightscoutSettings(isNSEnabled);
			
			needsSave = true;
		}
		
		private function reloadNightscoutSettings(fullDisplay:Boolean):void
		{
			if(fullDisplay)
			{
				dataProvider = new ArrayCollection(
					[
						{ label: ModelLocator.resourceManagerInstance.getString('sharesettingsscreen','enabled_label'), accessory: nsToggle },
						{ label: ModelLocator.resourceManagerInstance.getString('sharesettingsscreen','nightscout_url_label'), accessory: nsURL },
						{ label: ModelLocator.resourceManagerInstance.getString('sharesettingsscreen','nightscout_api_label'), accessory: nsAPISecret },
						{ label: "", accessory: nsLogin },
					]);
			}
			else
			{
				dataProvider = new ArrayCollection(
					[
						{ label: ModelLocator.resourceManagerInstance.getString('sharesettingsscreen','enabled_label'), accessory: nsToggle },
					]);
			}
		}
		
		private function onTextInputEnter(event:Event):void
		{
			//Clear focus to dismiss the keyboard
			nsURL.clearFocus();
			nsAPISecret.clearFocus();
		}
		
		private function onNightscoutLogin(event:Event):void
		{
			//Save values to database
			save();
			
			//Test Credentials
			NightScoutService.testNightScoutUrlAndSecret(true);
		}
		
		override public function dispose():void
		{
			if(nsToggle != null)
			{
				nsToggle.dispose();
				nsToggle = null;
			}
			if(nsURL != null)
			{
				nsURL.dispose();
				nsURL = null;
			}
			if(nsAPISecret != null)
			{
				nsAPISecret.dispose();
				nsAPISecret = null;
			}
			if(nsLogin != null)
			{
				nsLogin.dispose();
				nsLogin = null;
			}
			
			System.pauseForGCIfCollectionImminent(0);
			
			super.dispose();
		}
	}
}