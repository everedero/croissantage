#/bin/bash
currentpath="`dirname \"$0\"`"
echo "$currentpath"
# Copy the script in HOMEPATH
cp $currentpath/dejtalk.sh $HOME
# Make it executable
chmod +x $HOME/dejtalk.sh
# Copy the cron job in the LaunchAgents user folder
cp $currentpath/com.troll.dejtalk.plist $HOME/Library/LaunchAgents
# Replace HOMEPATH by the home path directory
sedline='s$HOMEPATH$'$HOME'$g'
sed -i -e $sedline $HOME/Library/LaunchAgents/com.troll.dejtalk.plist
# Activate the script (desactivating if already running)
cd $HOME/Library/LaunchAgents
launchctl unload com.troll.dejtalk.plist && echo "Script already running, deactivating and reactivating"
launchctl load com.troll.dejtalk.plist
echo "Successfully installed troll"
#launchctl remove com.troll.dejtalk.plist
