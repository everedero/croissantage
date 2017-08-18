# troll
Script to plant and hide a child script on Windows machines that makes the computer occasionally speak
After https://github.com/austinjdean/troll

### Installation Notes:

#### First, if you're familiar with Git, clone or fork this repo. If that's gibberish to you, click `Download ZIP` on the right-hand side of the page. Then keep reading.

The purpose of this script is to create a child script on Windows machines that makes the target machine speak a randomly selected phrase from a predefined list within the script. It's completely configurable, so by studying the code, you should be able to figure out how to change the phrases, as well as the frequency with which they're said. By default, the phrases will be dictated at a random frequency, bound below by 15 minutes, and above by 60 minutes.

You may run this script from anywhere on the PC - including an inserted USB disk containing the script. It will sequentially write lines of code to a file (called Win32.vbs) it creates here:

    %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup

`%APPDATA%` is a location interpreted by the Windows command line, so even if the victim has specified their files to be on a different drive than the most common `C:\`, this script adapts to accommodate. Executables placed in the above folder will be started when the computer boots, so all you need to do is run the script from anywhere (which plants the file there), and the victim's PC will run the script every subsequent boot.

### Modifying the script

##### Phrases:

- Change the total number of phrases you will have in line 15 (in the parentheses)
- Add (or remove) lines following the same pattern as the existing ones

##### Time interval:

- On lines 21 and 22, change the values of rmin and rmax to your desired shortest and longest time between phrases spoken. The units are milliseconds.

### Temporary termination:

To stop the script ONCE, access the Task Manager (Ctrl + Shift + Esc), and end the process `wscript.exe`. This will stop the computer from speaking until it boots next.

### Permanent Termination:

Follow the instructions for temporary termination, as well as the following:

Delete the file this script created (`Win32.vbs`) from `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`, and it will no longer run at startup.

### Disclaimer

I am not responsible for the rage you will incite using this script. It's also not tested on Windows 10 victims, so if anyone would like to report on how that works, drop a message here. If your victims ask you how to stop their computer's strange behavior, tell them to install Linux.
