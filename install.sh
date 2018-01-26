sudo apt-get upgrade && \
sudo apt-get install python-opencv && \
git clone https://github.com/jacksoncoder/pystreamer-http && \
cd pystreamer-http && \
pip install flask && \
sudo modprobe bcm2835-v4l2 && \
echo "Pystreamer-HTTP has been successfully installed! Now, run 'python main.py' to start up the server" && \
echo "Made by Jackson Lewis. Copyright 2018"
