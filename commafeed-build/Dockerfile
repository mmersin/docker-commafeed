FROM ubuntu:14.10

MAINTAINER Mehmet Mersin <mmersin@gmail.com>

RUN apt-get update && apt-get install -y git g++ build-essential openjdk-8-jdk maven

RUN mkdir /commafeed
VOLUME /commafeed
WORKDIR /commafeed
CMD [ "mvn", "clean", "package" ]

