# Pystreamer 2.0
Stream video from your Raspberry Pi to the Internet

## Setup
Before you can stream video on a Raspberry Pi, you need to allow it to use a camera. Run `sudo raspi-config` in the terminal. This should bring up a text-based menu. Use the arrow keys to navigate to the `Interfacing Options` button and press Enter. Then navigate to the `Camera` option, press Enter, and then use your arrow keys to select the `Yes` option when prompted whether you want to enable camera functionality, and press Enter. Once back at the menu, press Tab to go to the bottom selection screen and then select `Finish`. Reboot the Pi and you should be able to run a camera.

## Installation
Run `git clone https://github.com/jacksoncoder/pystreamer-http` to clone the repository to your Pi. Then run `cd pystreamer-http` to go into the right directory, and then run `sh install.sh` to install all dependencies. If no errors occur, you will be able to run `python main.py` to start the server.

If you want to have the Pi automatically start the server each time it boots, follow these steps:
1. Open `/etc/rc.local` in your favorite text editor (with root access so you can write to it)
2. On the line before the `exit 0` command, paste this code:
```
sudo modprobe bcm2835-v4l2 && \
python /home/pi/pystreamer-http/main.py
```
3. Save and exit the editor
4. Reboot to launch the program.

## Credits
Written and designed by Jackson Lewis.
