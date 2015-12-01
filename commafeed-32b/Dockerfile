FROM buildpack-deps:sid-curl

MAINTAINER Mehmet Mersin <mmersin@gmail.com>

RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y openjdk-8-jre-headless:i386 && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN update-ca-certificates -f

RUN [ "mkdir", "/commafeed", "/config", "/data" ]
VOLUME [ "/config", "/data" ]

ADD https://github.com/Athou/commafeed/releases/download/2.2.0/commafeed.jar /commafeed/
ADD https://raw.githubusercontent.com/Athou/commafeed/2.2.0/config.yml.example /config/config.yml

ENV JAVA_OPTS -d32

WORKDIR /data
ENTRYPOINT java ${JAVA_OPTS} -jar /commafeed/commafeed.jar server /config/config.yml

