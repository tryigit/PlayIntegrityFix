# This code adds all system apps to Magiskhide list. But I don't know how to see procs with .sh If you want to develop it, send a pull request.
# May be incompatible with other modules!
# Move to /data/adb/SystemAppAdd.sh and rum.

# Telegram: t.me/cleverestech

# Create or overwrite the target.txt file
su -c > /data/adb/tricky_store/target.txt

# Use to list all packages and process the output directly to target.txt
su -c pm list packages | awk -F: '{print $2}' > /data/adb/tricky_store/target.txt

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
