# Maven

![docker_logo](https://raw.githubusercontent.com/brunocantisano/rpi-maven/master/files/docker.png)![docker_maven_logo](https://raw.githubusercontent.com/brunocantisano/rpi-maven/master/files/logo-maven.png)![docker_paperinik_logo](https://raw.githubusercontent.com/brunocantisano/rpi-maven/master/files/docker_paperinik_120x120.png)

This Docker container implements Maven on Raspberry pi.
Only tested on Raspberry Pi 2

 * Raspbian base image: [resin/rpi-raspbian](https://hub.docker.com/r/resin/rpi-raspbian/)
 * Maven 3.3.3
 
### Installation from [Docker registry hub](https://registry.hub.docker.com/u/paperinik/rpi-maven/).

You can download the image with the following command:

```bash
docker pull paperinik/rpi-maven
```

# How to use this image

Use cases
----

1) Run a clean task with maven in a binded data directory:
```bash
docker run -it -v /media/usbraid/docker/maven:/root/.m2 paperinik/rpi-maven clean
```

2) Run a test with maven with a binded data directory:
```bash
docker run -it -v /media/usbraid/docker/maven:/root/.m2 paperinik/rpi-maven test
```