FROM java:openjdk-7-jre

MAINTAINER Mehmet Mersin <mmersin@gmail.com>

RUN [ "mkdir", "/commafeed", "/config", "/data" ]
COPY ./config.yml /config/
COPY ./commafeed.jar /commafeed/
VOLUME [ "/config", "/data" ]

ENV MAX_MEMORY 128m

WORKDIR /data
ENTRYPOINT java -Xmx${MAX_MEMORY} -jar /commafeed/commafeed.jar server /config/config.yml

