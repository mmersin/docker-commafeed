FROM ubuntu:14.04

RUN apt-get update && apt-get dist-upgrade -y

RUN apt-get install -y git build-essential openjdk-7-jdk maven
RUN apt-get remove -y --purge openjdk-6-jre openjdk-6-jre-headless openjdk-6-jre-lib

RUN mkdir /commafeed
RUN mkdir /config
RUN mkdir /data
WORKDIR /commafeed

ENV COMMAFEED_GIT https://github.com/Athou/commafeed.git
ENV COMMAFEED_VERSION 68f9852790211575f91cab6815445acd3e96cffd

RUN git clone $COMMAFEED_GIT .
RUN git checkout $COMMAFEED_VERSION

RUN mvn clean package

RUN cp /commafeed/config.dev.yml /config/config.yml
VOLUME /config
VOLUME /data

ENV MAX_MEMORY 128m

WORKDIR /data
ENTRYPOINT java -Xmx${MAX_MEMORY} -jar /commafeed/target/commafeed.jar server /config/config.yml

