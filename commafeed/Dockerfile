FROM java:openjdk-8-jre

MAINTAINER Mehmet Mersin <mmersin@gmail.com>

RUN [ "mkdir", "/commafeed", "/config", "/data" ]
COPY ./config.yml /config/
VOLUME [ "/config", "/data" ]

ADD https://github.com/Athou/commafeed/releases/download/2.2.0/commafeed.jar /commafeed/
ADD https://raw.githubusercontent.com/Athou/commafeed/2.2.0/config.yml.example /config/config.yml

ENV JAVA_OPTS -Djava.net.preferIPv4Stack=true

WORKDIR /data
ENTRYPOINT java ${JAVA_OPTS} -jar /commafeed/commafeed.jar server /config/config.yml

