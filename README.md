> [!WARNING]
> The reason fingerprints inside the module are banned is too many test checks. So do not check unnecessarily. Also, if you use your own fingerprints, do not share them.

> [!CAUTION]
> This module permanently removes magisk 32bit support! So, install it with this in mind.

> [!NOTE]
> If you want to re-enable Lsposed logs, just disable the module.

# China?
Since all users generally use this module, Chinese Rom developments are integrated into this module. So this module is recommended for Chinese Rom.

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

> [!TIP]
> Telegram: t.me/chinacloudgroup

> [!NOTE]
> I do not share my own projects on github (This project is only for update) So this is a fork. You can see whose project I forked in the changelog.
