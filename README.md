LineageOS device tree for OnePlus Ace 5 (codename _"giulia"_) with pre-built
kernel and pre-built `vendor*`, `odm`, `dtbo`, and `*dlkm` partitions.

OnePlus Ace 5 was released on December 26th, 2024. The phone's specifications
can be found [here][ace5].

 [ace5]: https://www.gsmarena.com/oneplus_ace_5-13592.php

## Screenshots

<img src="https://github.com/user-attachments/assets/b25799ef-4401-41f1-91ac-98ca51c98ca2" width="300"/>
<img src="https://github.com/user-attachments/assets/f7e054bc-b219-49ce-9e7e-355798d1986f" width="300"/>

## Current status

**Working:**
 - Audio
   - Microphone
   - Speaker
 - Bluetooth
 - Location
 - Radio
   - Mobile data
   - SMS
   - Telephony
     - VoLTE
 - SELinux enforcing
 - USB
   - ADB
   - ADB (recovery)
   - Fastbootd (recovery)
   - MTP
 - Wi-Fi
   - Station
   - Hotspot

**Not working:**
 - Camera
   - Will work if you patch the ODM image to delete
     `/odm/framework/androidx.camera.extensions.impl.fake.jar`.
 - DT2W
   - Not sure why `/proc/touchpanel/double_tap_enable` does not exist. It
     should exist according to the [kernel sources][dt2w].
 - Fingerprint
   - May work if you manage to include something like
     [vendor.oplus.hardware.biometrics.fingerprint@2.1][fp].

 [dt2w]: https://github.com/OnePlusOSS/android_kernel_modules_and_devicetree_oneplus_sm8650/blob/51ff6dce7e33fc85c67e3b32318b2fe2998bb186/vendor/oplus/kernel/touchpanel/oplus_touchscreen_v2/touchpanel_proc.c#L4425-L4428
 [fp]: https://github.com/LineageOS/android_hardware_oplus/blob/81d0ee9346264c1b1f8d6f82348bb678bde67665/interfaces/oplus/hardware/biometrics/fingerprint/2.1/IBiometricsFingerprint.hal#L23

## Credits

 - [Tutorial on how to create a custom Android ROM][tut] (in Chinese)
 - [OplusUpdater][oupd] for stock ROM (i.e., ColorOS) download
 - Documentation and sources from [LineageOS][lin] and [AOSP][aosp]
 - [Google search][goo] and its search results

 [tut]: https://blog.lynnrin.moe/posts/ROM-bringup-guide-prebuilt/
 [oupd]: https://github.com/Houvven/OplusUpdater
 [lin]: https://github.com/LineageOS
 [aosp]: https://source.android.com/
 [goo]: https://google.com/
