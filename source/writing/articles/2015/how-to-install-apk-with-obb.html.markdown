---
title: How to install an Android APK with OBB data using ADB
date: 2014-07-27
tags:
---

This serves as a guide for adding a build to an Android device that uses OBB. The most common use case is loading others' Android dev builds for the purposes of testing/QA. Unfortunately it's less straight forward than I had hoped, so I've compiled a reference for myself.

####Prerequisites

- Familiarity with the command line and [Android Debug Bridge](http://developer.android.com/tools/help/adb.html) (ADB)
- Android Device with [USB Debugging Mode](http://www.kingoapp.com/root-tutorials/how-to-enable-usb-debugging-mode-on-android.htm) enabled
- The APK and OBB files you wish to load (ex. test\_build.apk, test\_build\_data.obb)
- The name of the OBB file. Here's a sample file name: main.9502.com.company.app.obb

####Step-by-step guide

1. Confirm that your device is connected:

      <pre><code> 
      $ adb devices
      List of devices attached
      TA93002YVA  device
      </pre></code> 

2. Install your APK file. This may take a little while depending on the size.

      <pre><code> 
      $ adb install app\_build.apk
      4460 KB/s (20396990 bytes in 4.465s)
          pkg: /data/local/tmp/app\_build.apk
      Success
      </pre></code>

3. At this point you should be able to load the build by clicking on its icon under all apps. It should fail to load the game and give you an error similar to the following:

      <img src="/img/articles/no_resources.png" alt="" style="width: 100%;max-height: 100%">

4. The resources are contained in the OBB directory for the app. If there isn't a folder for the app, create one under Android > OBB. Let's go into the shell and create our directory:

      <pre><code> 
      $ adb -d shell
      shell@falcon\_umts:/ $ cd sdcard/Android/obb
      shell@falcon\_umts:/sdcard/Android/obb $ 
      mkdir com.company.app
      shell@falcon\_umts:/sdcard/Android/obb $ ls
      com.company.app
      shell@falcon\_umts:/sdcard/Android/obb $ exit
      $
      </pre></code>

5. Exit the shell and move your OBB file over. Use this format: adb push /path/to/local/file /mnt/sdcard/path/to/file. This may also take awhile depending on the size.

      <pre><code>
      $ adb push main.9502.com.company.app.obb 
      /sdcard/Android/obb/com.company.app/
      4469 KB/s (206696500 bytes in 45.158s)
      </pre></code>

6. If you put the data in the wrong place or named it incorrectly, you may see an error similar to this. Go back to adb shell or File Explorer in the device and confirm it's in the right place. You can also check with the person sending it to you that you've named it correctly.

      <img src="/img/articles/not_have_purchased.png" alt="" style="width: 100%;max-height: 100%">

7. Select your app to confirm the resources have loaded. You should be good to go!



