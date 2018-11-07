# laughing-train

Raspberry Pi ISA Digital Smart Board

Author : Souvik Saha 

Date of Implementation : 20th March, 2018.

Version v1.0


v1.0 Features 
------------------------------------------
* Automatically mounts pendrive to the Raspberry Pi and displays the images in numerical order
* Can add captions in the file
* To add new images, just copy and paste the images onto the USB drive and plug into the RPi
* The RPi will automatically boot onto the slideshow window.
* Slideshow interval is 10 seconds.
------------------------------------------

Setup
------------------------------------------
* Install feh using sudo apt-get install feh
* Add script to startup
--- cd ~/.config/lxsession/LXDE-pi
--- sudo nano autostart
--- Add to the end of the file @./slide.sh
* Mount USB --
--- sudo apt-get install ntfs-3g
--- Get UUID of drive using ls -l /dev/disk/by-uuid example CA1C-06BC 
--- sudo mkdir /media/usb1
--- Get GID id -g pi
--- Get UID id -u pi
--- Edit fstab file sudo nano /etc/fstab
--- Add to end of fstab file like this 
	UUID=057B-26E9 /media/pi/usb1 vfat nofail,uid=pi,gid=pi 0 0
------------------------------------------
