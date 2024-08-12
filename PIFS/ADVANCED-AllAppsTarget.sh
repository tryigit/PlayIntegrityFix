# This code adds all system apps to Magiskhide list. But I don't know how to see procs with .sh If you want to develop it, send a pull request.
# May be incompatible with other modules!

# Rename to AllAppsTarget.sh once completed.
# Move path: /data/adb/tricky_store/AllAppsTarget.sh

# Telegram: t.me/cleverestech

su -c > /data/adb/tricky_store/target.txt
su -c pm list packages | awk -F: '{print $2}' > /data/adb/tricky_store/target.txt


packages=$(su -c "pm list packages -s | cut -d ':' -f 2") 
for package in $packages; do
    su -c "magisk --denylist add '$package'"
done

# Temporarily stopped due to server need. This is torture for most people.

#if [ -f "/data/adb/tricky_store/keybox.xml" ]; then
#  rm "/data/adb/tricky_store/keybox.xml"
#fi
#random_keybox=$(find "/data/adb/modules/tricky_store/keyboxs/keyboxs/" -type f -name "*.xml" | shuf -n 1)
#if [ -z "$random_keybox" ]; then
#    exit 1
#fi
#cp "$random_keybox" "/data/adb/tricky_store/keybox.xml" 

#su -c killall com.google.android.gms
#su -c killall com.google.android.gms.unstable
