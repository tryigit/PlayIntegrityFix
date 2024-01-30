> [!WARNING]
> The reason fingerprints inside the module are banned is too many test checks. So do not check unnecessarily. Also, if you use your own fingerprints, do not share them.

> [!CAUTION]
> This module permanently removes Magisk 32bit support! The only way to restore 32bit is to reinstall magisk and reinstall other zygisk modules. So, install it with this in mind.

# China?
Since all users generally use this module, Chinese Rom developments are integrated into this module. So this module is recommended for Chinese Rom.

# Features
+ **Set motherboard to MP.**

The phone software detects your device's motherboard as the original motherboard.

+ **Setting the motherboard Country to China**

Xiaomi may impose some restrictions on regional roms..Unfortunately, some phones, like the Xiaomi 12T Pro, require additional things like setting the model number. However, this feature is sufficient for models such as Xiaomi 13.

+ **Permanently removing 32bit support for Magisk and modules**

Magisk zygisk will not use ram unnecessarily. Also modules like lsposed.
> [!NOTE]
> Shamiko module is pushing 32bit support and causing an error, report this to the Shamiko developer. Shamiko is excluded for now.

+ **Zygote 32bit lazyload support for Xiaomi devices**

If you have a good processor, 32bit will use less ram. The basic logic is that zygote32 will not run unnecessarily until a 32bit application is opened. This feature may affect the opening speed of 32bit apps, but who cares?
Also dex2oat 32bit optimization is disabled.

+ **Disable lsposed logs**

Some applications can detect zygisk by reading lsposed logs with getprop. This module prevents this.

+ **Dynamic bootloader hiding**

If there is a Shamiko module, it does not set props unnecessarily. It allows you to bypass simple bootloader checks if you do not have the Shamiko module.

+ **Gms spoof (Fork feature)**

Droidguard reads information like fingerprint and device model differently. So hook.
To customize, see default.pif.json.

# Noobs
> [!WARNING]
> If you fail the Meets test, instead of waiting for the module update, follow the steps below and set your own pif.json file. I also share backup pif files.

## If you want to test fingerprints without needing to reboot
```
su -c killall com.google.android.gms.unstable
```

## Fingerprint File
```
/data/adb/pif.json
```
## Country Check
```
getprop ro.boot.hwc
```

### Pif File Details:
https://xdaforums.com/t/module-play-integrity-fix-safetynet-fix.4607985/post-89189572

https://xdaforums.com/t/tools-zips-scripts-osm0sis-odds-and-ends-multiple-devices-platforms.2239421/post-89173470

> [!NOTE]
> You need to patch `framework.jar` or a lot of information to pass the strong test. I can't help you with that.

> [!NOTE]
> I do not share my own projects on github (This project is only for update) So this is a fork. You can see whose project I forked in the changelog.

> [!TIP]
> Telegram: t.me/chinacloudgroup
