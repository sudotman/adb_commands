::An automated script for fast batch copying of entire folders, like the camera directory


:: uncomment the below command if the adb folder is in some other drive other than C, say (D)
:: D:

:: changes the directory to the adb folder, change it accordingly
cd C:\Downloads\adb_folder

:: scans for devices and turns on the daemon if it's not already turned on
adb devices

:: pulls (copy) the file from the device, to a specified folder
adb pull /storage/emulated/0/camera_directory_here D:\replace_this_with_the_destination