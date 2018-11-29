General
-------

Spike is an iOS phone app, and its users are a welcoming community with the interests of its users at its heart. This document has been written by volunteers who use and love Spike in a bid to help people access the app to its potential. It does not cover very specific issues – if your problem is bespoke or unusual and not covered in this document, please search the Facebook site by typing a keyword in to the “Search” box in the group’s page. If you have an area that you think needs to be included in this document, please tag Kathy Bliss or one of the moderators on the Facebook site with details.

Please remember that Spike is not a commercial product. It is designed, developed and managed by volunteers doing the best they can to accommodate everyone at the expense of having their free time and social lives severely affected so that they can dedicate more time helping others. The only thing they ask in return is politeness and patience.

Invites
-------

### How do I access Spike?

Spike is not available on the Apple App Store, instead you can download Spike through App Centre via an invitation you can request from the Spike website.

Fill in the form at <https://spike-app.com/#installation> with an email address that you can access from your phone. Yahoo blocks invitations, so make sure you use an email address that is not hosted by Yahoo. Within a few moments, you should receive an invitation email containing details of how to install the Spike app. Once you’ve received your invitation email, the installation process to follow is detailed in a wiki that can be found here: <https://github.com/SpikeApp/Spike/wiki/Installing-Spike-Using-App-Center>. Follow the instructions to the letter – they are fully comprehensive and everything you need to do is covered. Common mistakes are trying to register your device (you don’t need to…) or missing the step about setting up your phone to trust Spike’s certificate.

### How long should I expect to wait for my invite?

ALL invites are sent automatically and so should be with you a few moments after your request. If there’s nothing in your inbox, then please check your junk mail folder. Occasionally, some email servers block the invitation email from spike before it reaches your account. If this happens, please use a different email address that you ae able to access from your phone. This isn’t something the Spike Team can change I’m afraid.

What devices are compatible?
----------------------------

* **iPhones**: Works with iPhone 4s, 5, 5c, 5s, 6, 6 Plus, 6s, 6s Plus, SE, 7, 7 Plus, 8, 8 Plus, X, Xs and Xr.
* **iPads**: Works with all iPads apart from iPad 1.
* **iPods**: Works with iPod Touch 5th & 6th Gen.
* **Apple Watches**: All Apple watches are supported (support can be found within the Spike app Menu > Settings > Watch)
* **Other Watches**: The following watches can be used with Spike: Pebble, Fitbit Iconic and Versa, Garmin. For further instructions, go to the app and click on Settings > Integration > Internal HTTP Server. This list is not exhaustive – please do a search of the Facebook group for your watch model to see if it’s supported.

Chart & Display
---------------

### Can I adapt the Chart to suit my needs?

Yes – the type of scale, size, colours can all be set in *Menu > Settings > Chart*.

### What time span does the information at the bottom of the Spike screen represent?

The default is 24 hour. If you are using Spike in Master mode, you can change this with a long tap on the table or in Menu > Settings > Chart. For Follower mode, the data is currently always the last 24 hours. In the future it may also be implemented in the Follower mode to select up to three months.

### How can I enable my BG value to display on the iOS app badge?

Go to *Settings > Share > BG App Badge* and slide to enable.

### Why is the BG value on app badge not displaying correctly?

It is – iOS app badges cannot contain decimal values (e.g. 4.8). For mmol/l users, Spike, by default, will multiply the glucose value by ten (e.g. 4.8 will be displayed as 48, a value 5.3 as 53 etc.). When the multiplier is disabled, it will round the badge to the nearest integer (e.g. a glucose value of 4.8 will be displayed as 5 on the badge). 
If you don’t want Spike to round your glucose value you can enable the multiplier (Settings > Share > BG App Badge > Apply Multiplier). After changing this setting, you will need to wait for the next reading to see the changes.

### What does a grey line on my graph mean?

After a period of disconnection, some transmitters are able to back fill data upon being reconnected to the sensor. This data, as it’s historical and held in the sensor, is shown as a grey line. This data may be uploaded to Nightscout (but shown at 15 minute intervals, not 5 minute intervals), or may not be uploaded at all.

### Why does my graph look like an archery target?

This is because Spike doesn’t yet have enough data to show as a pie chart. Give it some time and it will adjust to show readings for the designated period.

### Why does the change arrow show two horizontal arrows pointed in either direction?

This is because Spike doesn’t yet have enough data to show the rise/fall from the last reading. Give it some time and it will adjust to show rise/fall.

### I like to see dots/a line – how do I do this?

Check/uncheck the ‘line’ box on the bottom left (in portrait mode).

### What does the ‘Readings’ number and % figure mean?

Spike is designed to take a reading every 5 minutes. That means 12 readings an hour, or 288 readings in a 24 hour period. The number of readings is that received from the transmitter in the last 24 hours. The percentage shown is that number shown as a percentage of a total of 288.

### How come I have more than 288 readings?

If you walk away from your phone, breaking the signal, then walk back to it within 5 minutes, assuming your transmitter reconnects seamlessly, Spike may take a reading upon reconnection, even though it’s been less than 5 minutes since the last reading was received. Similarly, if your transmitter allows you to do so, you may do a reading on demand. Again, this may mean that Spike gets multiple readings in 5 minutes. So long as the number of readings is 288 or higher, Spike will always show the percentage as 100%.

### How come I have less than 288 readings?

For whatever reason, you had a period of time where Spike wasn’t getting readings from your sensor. It may just be a matter of being out of range of your phone. Please see disconnection for more advice as to how to avoid missed readings.

### What does ‘Retro’ mean next to the time?

You’ve pulled the view window (the white box at the bottom of the screen) away from the current time, so Spike is showing a past period in the last 24 hours. Drag it to the right to get back to the here and now.

### I want to / don’t want to see my chart in landscape. How do I do this?

Enable / disable portrait lock in the settings of your iPhone (not in Spike).

### I want to have other apps on my phone in landscape, but keep Spike in portrait. How do I do this?

Disable portrait lock in the settings of your iPhone (not in Spike), then in Spike tap the three dots in the top left hand corner, and select ‘No Lock’.

### I’ve noticed I have some erroneous readings, can I delete them?

So long as it’s within the last 24 hours, then yes. Tap the three dots in the top right hand corner and select ‘Readings’. Wait for the data to render and then scroll down to the reading(s) you wish to delete. Tap the trash can to remove and if you’re sure tap ‘Yes’ to the warning displayed.

Sensors
-------

### What sensors does Spike support?

Spike supports the Dexcom range of sensors (G4 with xdrip bridge hardware; G5 and G6), and the Freestyle Libre Sensor. All other sensors are currently not supported.

### I use Freestyle Libre – does using Spike mean I can’t use my Libre reader or the Librelink app too?

No – you can still scan with your reader or librelink.

### How long will my Freestyle Libre sensor last?

Using Spike, the Freestyle Libre sensor will last 14 and a half days. This is the same for wherever you purchase your sensor in the world, although for some countries, you will not be able to use the libre scanner after 10 days.

### Will Spike or a third party transmitter affect my sensor in any way?

No – Spike will not change the sensor. It reads a signal that comes from the transmitter that is attached to your sensor. It cannot materially affect the sensor. Spike users should note that using Spike or third party transmitters with a sensor may invalidate the warranty.

### Dexcom Sensor Questions

### I’ve just started / on the last day of my sensor, and my readings are erratic. Why so?

When you add a sensor to your body, there is some local site trauma. This settles down as your body heals, but initially the sensor may show some variable data. When you come towards the end of your sensor, for some people the coating on the filament that the glucose level is derived from becomes a little less reliable in giving a reading.

### How can I avoid erratic readings at start / end of sensor life?

TODO

Transmitters
------------

### What transmitters will work with Spike?

TODO

Alarms
------

### What alarms can be set?

If you go to Menu > Settings > Alarms you will see the various alarms that can be set.

### How do I set an alarm up?

Go to Menu > Settings > Alarms > Alert Types. Click on “Add Alert” and name it, customise it to what you need and click on Save at the bottom

### Alarms are not working – why?

-   Check that if your phone is on Mute, you have enabled Override Mute in Menu > Settings > Alarms
-   Check that your volume is turned up as Spike uses this volume for Notifications
-   Check that you are not in “Do Not Disturb” Mode

Calibration
-----------

### How do I calibrate?

Calibration is simple when you know how. Always calibrate with a finger prick. Do not do it with the Dexcom reader, Libre reader or LibreLink app as they have their own algorithms, whereas Spike applies its own algorithm to the raw data based on your finger prick. Always calibrate when level and in range (Spike can be set to alert you when you are in steady range if you set the alarm to do so) but if you know that there’s an external factor involved, you can snooze it for a while any try again when you feel it is a better time. For example, if Spike is telling you it is fine to calibrate but you have just eaten or injected, or you are dehydrated, it might still be better to delay the calibration for a while.

### How often should I calibrate?

The regularity of calibration is really what you find works for you. Many recommend twice a day when the sensor is first applied (having allowed a 12-24 hour period for the sensor to “soak” or settle) and then once a day for the next couple of days, and then once every few days for the rest of the sensor life.

Spike uses a method called ‘line confidence’ for calibration. That means if you enter calibrations that are way out of where Spike expects them to be you can confuse the app, and actually make Spike less accurate. If this happens go to menu, sensor and delete all calibrations. This is like starting again without a new sensor (except without the warm up) so you’ll be asked for an initial calibration after a few minutes. Put this in then you should be good to go again.

### Is it recommended to delete all calibrations every time you start a new Libre Sensor?

No, you do not need to delete. Spike will know that you have changed the sensor (it will either detect it or know when you stop the previous sensor) so no action on your part required

### Is it necessary to have the perfect conditions for the initial calibration?

Ideally yes, but unfortunately life isn’t like that. To get going with a new sensor, calibrate when requested to do so upon starting your sensor. Then, if you calibrate again when glucose readings are level and in range.

Accuracy / Predictions
----------------------

### How accurate is Spike?

We think Spike is pretty accurate. Spike takes the raw data sent from your sensor and using its own internal algorithm and calibration data, displays glucose levels. Spike can only be as good as the calibration information that the user enters, so having an accurate blood glucose meter is important. It’s also important to know that the sensor that you wear measures the glucose level of your

### My Spike readings are not in line with blood test readings. What can I do?

Deleting all Calibrations (Menu > Sensor > Calibrations > Delete all Calibrations) usually fixes this although it may be a faulty sensor. Check your sensor reading with a blood finger prick test. This has more frequently been an issue with Libre sensors. With the Dexcom G6, problems with accuracy can be caused by adding too many calibrations. Most accuracy issues are caused by incorrectly calibrating.

### Can Spike display predicted levels?

Not yet, but will hopefully be available in future updates

Disconnection / Suspension / Battery Life
-----------------------------------------

### My device is unstable. What could I do?
The first thing that should be tried is a soft reset, which forces a restart of the iPhone. This is necessary, if the device is unstable or if battery consumption has increased. No data is deleted during this process.

* For all **iPhone models below the 7** (not included) just press and hold the power and home buttons at the same time and keep them pressed until your phone reboots and you see the Apple logo. As soon as the logo appears you can release both buttons.
* For **iPhone 7**, press and hold the power and volume down buttons at the same time and keep them pressed until your phone reboots and you see the Apple logo. As soon as the logo appears you can release both buttons.
* For **iPhone 8 and newer**, briefly press and release the volume up button, then immediately press and release the volume down button, and then press and hold the power button until the phone reboots and you see the Apple logo. As soon as the logo appears you can release the power button.

### How can I avoid losing readings from my transmitter and/or preserve battery life?

In order for Spike to avoid losing readings and perform download/upload operations in the background when you activate glucose sharing to online services (e.g. Nightscout or Dexcom Share) it avoids being suspended by iOS to ensure stability. In a normal scenario you should let Spike manage suspension but you may wish to change the settings in Menu > Settings > Advanced. Follow the instructions.

### How can I prevent the iPhone from suspending during the night?

* **iOS 12** One of iPhones newest features is screen time tracking. In settings you can create *down time* from your phone which only allows certain apps to run. If you only include Spike in your allowed apps and set downtime from 1am-7am this can reduce over night suspensions! Still close all your apps in the background (except Spike of course).

* TODO: Add more hints

### How can I preserve my battery?

TODO

Treatments
----------

### Which treatments does Spike support?

-   **Bolus**: Administration of insulin, either by using a pen or a pump. It normally represents a correction made when glucose levels are running high. The bolus treatment is not meant to be used with basal insulins.
-   **Carbs**: Ingestion of carbohydrates. Usually done when glucose levels are running low or the user eats a snack.
-   **Meal**: Represents a meal consisting of carbohydrates and an insulin bolus. A meal treatment combines the carb and bolus treatments into one.
-   **BG Check**: A visual representation of the current glucose level measured with a meter. Sometimes the user might want to check blood glucose levels with a meter but doesn't want to calibrate the sensor. This treatment is used to register the measurement in Spike without calibrating the sensor.
-   **Note**: A brief record describing a specific event like "out for a run", "lunch with friends", etc.
-   **Calibration**: Calibrations are added automatically to the Chart whenever the user calibrates the sensor.
-   **Sensor Start**: Sensor Starts are added automatically to the Chart whenever the user starts a new sensor.

All treatments are automatically added to Spike's chart. For detailed information about inputting treatments on Spike, please refer to <https://github.com/SpikeApp/Spike/wiki/Treatments>.

Widgets and Full Screen
-----------------------

TODO

Speech
------

TODO

Integration
-----------

#### IFTTT

### What is IFTTT?

IFTTT is an extensible system by which users can create custom recipes following an “if this then that” logic. Spike users can use IFTTT in response to “events” (like a high or low alarm, when a new glucose reading arrives from the transmitter, and alarm is snoozed, etc.). The potential of the IFTTT system is exciting, and users can create their own recipes using any available IFTTT channel in combination with the Maker channel. Possible applications of IFTTT integration range from sending an SMS message or making a phone call when a Spike event happens, to tweeting a Spike event, to changing the color of household lights based on a Spike event (if you use a smart lighting system like Philips hue), to notifying caregivers if your glucose gets too low or too high, etc. The possibilities are almost endless and is up to the user's imagination to create IFTTT recipes that suit his/her needs.

How can I create an IFTTT account?

Follow the tutorial <https://github.com/SpikeApp/Spike/wiki/IFTTT>

#### SiDiary

TODO

#### Internal HTTP Server

TODO

#### Loop Offline

TODO

Watches
-------

TODO

Follower Mode / Nightscout
--------------------------

### What is Follower mode?

Spike allows users to follow other users by using a Nightscout site that acts as a proxy. Spike in follower mode can follow users using Spike in master mode or any other app that can share data to a Nightscout site, like xDrip+ for Android.

### What features are available to me via Nightscout?

Spike followers will have access to most of the features available to masters, like settings alarms, sharing glucose values to a watch, viewing and adding treatments, etc.

### How do I set up Follower mode?

In order to set Spike in follower mode the user first needs to set up a Nightscout site. The process can be a bit daunting for beginners but just follow Miguel’s tutorial at <https://github.com/SpikeApp/Spike/wiki/Spike-Follower-Mode> and you'll be running a Nightscout site in less than 20 minutes.

### What are the advantages of setting up a Nightscout site?

Setting up a Nightscout site also brings many other advantages to Spike users, like full feature reports that can be printed and taken to doctor appointments.

### Sharing Data

TODO

### Can I send data from Spike to Diasend so that it can auto-share with my Endocrinologist?

Miguel has contacted Diasend to request access to their API without success so far. In-app reports are planned for future updates.

### Miguel’s Motivation

If you would like to know about how Spike came to be, here is an interview with Miguel where he explains.

<https://www.deebee.it/?p=14531&lang=en>

Miguel also briefly explained it when he presented Spike at the DiabetesMine event in Orlando, Florida.

TODO Link

Donations
---------

Spike is a free app and it is Miguel’s intention to keep it that way. It survives on contributions from the diabetic community and future features will require purchasing 3rd party libraries.

If this app has impacted on your life in a positive way and you want to help keep this project alive, please consider making a donation. Every contribution counts.

To donate, go to Main Menu > Donations
