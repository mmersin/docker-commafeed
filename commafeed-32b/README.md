# docker image for commafeed

This image contains a pre-compiled commafeed.jar and an example config file.

java is i386 version and jvm is run in 32 bit mode to save memory.

To use yor own config file, use "/config" volume and put your config.yml there

Data(fb, logs, etc) are stored in "/data" volume. 

https://registry.hub.docker.com/u/mrsn/commafeed-32b/

