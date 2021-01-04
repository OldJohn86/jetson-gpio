#!/bin/bash

# https://www.waveshare.net/study/article-882-1.html

# 1.
sudo apt-get update
sudo apt-get install python-pip
sudo apt-get install python3-pip

# 2.
sudo pip install Jetson.GPIO
sudo pip3 install Jetson.GPIO

# 3.
sudo groupadd -f -r gpio
sudo usermod -a -G gpio ${USERNAME}

# 4.
sudo cp lib/python/Jetson/GPIO/99-gpio.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo udevadm trigger

# 5.
# cd /opt/nvidia/jetson-gpio/samples/
# sudo python3 xxxx.py

