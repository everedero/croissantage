# Croissantage on Mac
Script to plant and hide a script on Mac machines that makes the computer occasionally speak

### Installation Notes
Use the "make\_dejtalk.sh" script to install the script on Mac. It will copy the "dejtalk.sh" file in homepath, and install "com.troll.dejtalk.plist" in the LaunchAgents directory, then use launchctl to make it run.

In order to remove, use:
```
launchctl remove com.troll.dejtalk.plist
```
And remove the script files.

### Modifying the script

##### Sentences

You can modify sentences and voices in the dejtalk.sh file. Do not forget to update the total number of sentences.

##### Time interval

Change the "StartInterval" value in com.troll.dejtalk.plist to modify the time interval. This value is given in seconds.
