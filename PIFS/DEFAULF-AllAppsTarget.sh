# Rename to AllAppsTarget.sh once completed.
# Move path: /data/adb/tricky_store/AllAppsTarget.sh

# Telegram: t.me/cleverestech

su -c > /data/adb/tricky_store/target.txt

su -c pm list packages | awk -F: '{print $2}' > /data/adb/tricky_store/target.txt
