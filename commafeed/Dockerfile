FROM java:openjdk-8-jre

MAINTAINER Mehmet Mersin <mmersin@gmail.com>

RUN [ "mkdir", "/commafeed", "/config", "/data" ]
COPY ./config.yml /config/
COPY ./commafeed.jar /commafeed/
VOLUME [ "/config", "/data" ]

ENV JAVA_OPTS="-Xmx128m"

WORKDIR /data
ENTRYPOINT java ${JAVA_OPTS} -jar /commafeed/commafeed.jar server /config/config.yml

