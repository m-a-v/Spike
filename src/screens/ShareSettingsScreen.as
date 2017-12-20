package screens
{
	import display.LayoutFactory;
	import display.settings.share.DexcomSettingsList;
	import display.settings.share.HealthkitSettingsList;
	import display.settings.share.NightscoutSettingsList;
	
	import feathers.controls.Label;
	import feathers.events.FeathersEventType;
	import feathers.themes.BaseMaterialDeepGreyAmberMobileTheme;
	import feathers.themes.MaterialDeepGreyAmberMobileThemeIcons;
	
	import model.ModelLocator;
	
	import starling.display.DisplayObject;
	import starling.events.Event;
	
	import ui.AppInterface;
	
	import utils.Constants;
	
	[ResourceBundle("sharesettingsscreen")]

	public class ShareSettingsScreen extends BaseSubScreen
	{
		/* Display Objects */
		private var healthkitSettings:HealthkitSettingsList;
		private var dexcomSettings:DexcomSettingsList;
		private var nightscoutSettings:NightscoutSettingsList;
		
		public function ShareSettingsScreen() 
		{
			super();
			
			setupHeader();	
		}
		override protected function initialize():void 
		{
			super.initialize();
			
			setupContent();
			adjustMainMenu();
			setupEventHandlers();
		}
		
		/**
		 * Functionality
		 */
		private function setupHeader():void
		{
			/* Set Header Title */
			title = ModelLocator.resourceManagerInstance.getString('sharesettingsscreen','share_settings_title');
			
			/* Set Header Icon */
			icon = getScreenIcon(MaterialDeepGreyAmberMobileThemeIcons.shareTexture);
			iconContainer = new <DisplayObject>[icon];
			headerProperties.rightItems = iconContainer;
		}
		
		private function setupContent():void
		{
			//Healthkit Section Label
			var healthkitLabel:Label = LayoutFactory.createSectionLabel(ModelLocator.resourceManagerInstance.getString('sharesettingsscreen','healthkit_section_label'));
			screenRenderer.addChild(healthkitLabel);
			
			//Healthkit Settings
			healthkitSettings = new HealthkitSettingsList();
			screenRenderer.addChild(healthkitSettings);
			
			//Dexcom Section Label
			var dexcomLabel:Label = LayoutFactory.createSectionLabel(ModelLocator.resourceManagerInstance.getString('sharesettingsscreen','dexcom_share_section_label'), true);
			screenRenderer.addChild(dexcomLabel);
			
			//Dexcom Settings
			dexcomSettings = new DexcomSettingsList();
			screenRenderer.addChild(dexcomSettings);
			
			//Nightscout Section Label
			var nightscoutLabel:Label = LayoutFactory.createSectionLabel(ModelLocator.resourceManagerInstance.getString('sharesettingsscreen','nightscout_section_label'), true);
			screenRenderer.addChild(nightscoutLabel);
			
			//Nightscout Settings
			nightscoutSettings = new NightscoutSettingsList();
			screenRenderer.addChild(nightscoutSettings);
		}
		
		private function adjustMainMenu():void
		{
			AppInterface.instance.menu.selectedIndex = 3;
		}
		
		private function setupEventHandlers():void
		{
			addEventListener(FeathersEventType.TRANSITION_OUT_COMPLETE, onScreenOut);
		}
		
		/**
		 * Event Handlers
		 */
		private function onScreenOut(e:Event):void
		{
			//Save Settings
			if (healthkitSettings.needsSave)
				healthkitSettings.save();
			if (dexcomSettings.needsSave)
				dexcomSettings.save();nightscoutSettings
			if (nightscoutSettings.needsSave)
				nightscoutSettings.save();
		}
		
		override protected function onBackButtonTriggered(event:Event):void
		{
			//Pop Screen
			dispatchEventWith(Event.COMPLETE);
		}
		
		/**
		 * Utility
		 */
		override protected function draw():void 
		{
			var layoutInvalid:Boolean = isInvalid( INVALIDATION_FLAG_LAYOUT );
			super.draw();
			icon.x = Constants.stageWidth - icon.width - BaseMaterialDeepGreyAmberMobileTheme.defaultPanelPadding;
		}
	}
}