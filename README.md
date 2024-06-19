> [!NOTE]
> **P**lay **I**ntegrity **F**ix Advanced > PIFS
> 
> *Advanced version affects the entire system and bootloader is completely hidden 💀*
> 
> **P**lay **I**ntegrity **F**ix Old > PIF
> 
> *The old method is only intended to trick Google Play Services and does not affect the system.*
> 


> [!WARNING]
> The reason fingerprints/keyboxs inside the module are banned is too many test checks. So do not check unnecessarily.

> [!CAUTION]
> This module permanently removes Magisk 32bit support! The only way to restore 32bit is to reinstall magisk and reinstall other zygisk modules. So, install it with this in mind.

> [!CAUTION]
> PIFS version is dangerous and may cause bootloop after rom update. Please uninstall the module when updating the rom and re-flash it after rom update. We do not accept responsibility.

# China?
Since all users generally use this module, China Rom developments are integrated into this module. So this module is recommended for China Rom.

# Features
+ **Set motherboard to MP**

The phone software detects your device's motherboard as the original motherboard.

+ **Setting the motherboard Country to China**

Xiaomi may impose some restrictions on regional roms. Unfortunately, some phones, like the Xiaomi 12T Pro, require additional things like setting the model number. However, this feature is sufficient for models such as Xiaomi 13.

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

+ **Gms spoof (fork)**

PIFX version Droidguard reads information like fingerprint and device model differently. So hook.
To customize, see default.pif.json.

+ **BL Certificate Spoof 💀 (fork)**

PIFXS version uses certificate spoof method to pass the strong test.

# Noobs
> [!WARNING]
> If you fail the Meets/Strong test, you can add your own Keybox (https://github.com/tryigit/PlayIntegrityFix?tab=readme-ov-file#strong-version-extra-info) or edit the custom.pif.json file in the standard version instead of waiting for the module update. If you fail the basic test, it means that Google has detected Magisk and just wait for an update.

## Test fp without needing to reboot (PIFX)
```
su -c killall com.google.android.gms.unstable
```

## Fingerprint File (PIFX)
in device
```
/data/adb/pif.json
```
## Certificate File (PIFXS)
in module
```
/META-INF/com/google/android/magisk/dex/
```
## Motherboard Country Check
```
getprop ro.boot.hwc
```

### If you have keybox or fingerprint (PIFXS):
1. Open [FrameworkPatch](https://github.com/chiteroman/FrameworkPatch/tree/69e08eff494b68ccd3ec71ffb04e0a798d7c686e) project in Android Studio.
2. Add your keybox or fingerprint to `Keybox.java` or `Android.java` respectively and do a release build.
3. Extract compiled `classes.dex` from the release .apk file.
4. Copy the `classes.dex` file and paste it into `META-INF/com/google/android/magisk/dex` directory of this module.
5. Install the module in your root manager app.

#### Strong Version Extra Info
https://xdaforums.com/t/module-framework-patcher-go.4674536/

> [!NOTE]
> I do not share my own projects on github (This project is only for update) So this is a fork. You can see whose project I forked in the changelog.

## Telegram
https://t.me/cleverestech
