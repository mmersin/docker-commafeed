FROM buildpack-deps:sid-curl

MAINTAINER Mehmet Mersin <mmersin@gmail.com>

RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y openjdk-8-jre-headless:i386 && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN update-ca-certificates -f

RUN [ "mkdir", "/commafeed", "/config", "/data" ]
VOLUME [ "/config", "/data" ]

ADD https://github.com/mmersin/commafeed/releases/download/2.1.0/commafeed.jar /commafeed/
ADD https://github.com/mmersin/commafeed/raw/2.1.0/config.dev.yml /config/config.yml

ENV JAVA_OPTS -d32 -Xmx96m

WORKDIR /data
ENTRYPOINT java ${JAVA_OPTS} -jar /commafeed/commafeed.jar server /config/config.yml

