#!/bin/bash
cd $HOME/Library/LaunchAgents
launchctl unload com.troll.dejtalk.plist
launchctl remove com.troll.dejtalk
rm $HOME/Library/LaunchAgents/com.troll.dejtalk.plist
rm $HOME/dejtalk.sh
rm /tmp/dt.err
rm /tmp/dt.out
