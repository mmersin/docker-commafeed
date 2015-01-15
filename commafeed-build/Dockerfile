FROM ubuntu:14.04

MAINTAINER Mehmet Mersin <mmersin@gmail.com>

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y git build-essential openjdk-7-jdk maven
RUN apt-get remove -y --purge openjdk-6-jre openjdk-6-jre-headless openjdk-6-jre-lib

RUN mkdir /commafeed
VOLUME /commafeed
WORKDIR /commafeed
CMD [ "mvn", "clean", "package" ]

