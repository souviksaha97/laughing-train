

#!/bin/bash
DISPLAY=:0.0
x="0"

sudo xset s off
sudo xset -dpms
sudo xset s noblank

test=$(mount | grep /media/pi/usb1)     
rm running.log
echo "$x"
while [ "$x" == "0" ];		#run loop until the usb drive is mounted
do
echo "in loop" >> running.log
test=$(mount | grep /media/pi/usb1)
	if [[ -z "$test" ]];
	then 
		echo "not mounted"
		wait 10
	else
		x="1"
		echo "mounted" >> running.log
	fi
done

echo  "$test">> running.log
echo "Hello! Found drive" >> running.log
rm -rf /home/pi/ISA_Slide/usb1			#delete earlier images
echo "Deleting images"  >> running.log
cp -r /media/pi/usb1 /home/pi/ISA_Slide		#copy images from the usb to the ISA_Slide folder
echo "Copying images" >> running.log
echo "Starting slideshow!" >> running.log
	feh -Y -C /usr/share/fonts/truetype/ -e piboto/Piboto-Regular.ttf/20 -x -q -K caption/ -D 10 -B black -F -Z  -r /home/pi/ISA_Slide/
