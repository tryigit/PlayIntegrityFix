> [!NOTE]
> **P**lay **I**ntegrity **F**ix Advanced > **PIFS**
> 
> *New and improved version that passes the Strong test (Includes BL Hiding). Infrastructure by Lsposed developers. Only Google Play Services and some apps spoof, they do not affect the system.*
> 
> **P**lay **I**ntegrity **F**ix Old > **PIF**
> 
> *The old method only allows you to spoof prop values such as fingerprints. It does not affect the system in the same way as the PIFS module.*
> 


> [!WARNING]
> The reason fingerprints/keyboxs inside the module are banned is too many test checks. So do not check unnecessarily.

> [!CAUTION]
> This module permanently removes Magisk 32bit support! The only way to restore 32bit is to reinstall magisk and reinstall other zygisk modules. So, install it with this in mind.

# China?
Since all users generally use this module, China Rom developments are integrated into this module. So this module is recommended for Official China Rom.

# Features
+ **Set motherboard to MP**

The phone software detects your device's motherboard as the original motherboard.

+ **Setting the motherboard country to China**

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

+ **Prop spoof (PIF/PIFS)**

PIF/PIFS version Droidguard reads information like fingerprint and device model differently. So hook.

+ **BL certificate spoof (PIFS)**

Only affects GMS and test applications. Allows you to spoof the Keybox, i.e. BL License file. Includes various advanced stuff.


## Test fp/keybox without needing to reboot
```
su -c killall com.google.android.gms.unstable
```

## Fingerprint File (PIF/PIFS)
in device
```
/data/adb/pif.json
```
```
/data/adb/tricky_store/
```
## Keybox File (PIFS)
in device
```
/data/adb/tricky_store/keybox.xml
```
**Simple Strong Guide:**
in maintenance.

## Motherboard Country Check
```
getprop ro.boot.hwc
```

> [!NOTE]
> I do not share my own projects on github (This project is only for update) So this is a fork. You can see whose project I forked in the changelog.

## Telegram
https://t.me/cleverestech
