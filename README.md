# rpi-maven => base image: paperinik/rpi-java8
Maven 3.3.3 on Raspberry pi with docker

Only tested on Raspberry Pi 2
```
docker run paperinik/rpi-maven /media/usbraid/docker/maven:/root/.m2 mvn package
