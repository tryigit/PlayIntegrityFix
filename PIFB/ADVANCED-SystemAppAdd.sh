# This code adds all system apps to Magiskhide list. But I don't know how to see procs with .sh If you want to develop it, send a pull request.
# May be incompatible with other modules!
# Just run, no auto support.

# Telegram: t.me/cleverestech

# Create or overwrite the target.txt file

# Magisk denylist all system apps add
packages=$(su -c "pm list packages -s | cut -d ':' -f 2") 

# Add each package to the Magisk denylist
for package in $packages; do
    su -c "magisk --denylist add '$package'"
done
