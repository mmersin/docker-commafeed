FROM java:openjdk-7-jre

RUN mkdir /commafeed
RUN mkdir /config
RUN mkdir /data
COPY ./config.yml /config/
COPY ./commafeed.jar /commafeed/

VOLUME /config
VOLUME /data

ENV MAX_MEMORY 128m

WORKDIR /data
ENTRYPOINT java -Xmx${MAX_MEMORY} -jar /commafeed/commafeed.jar server /config/config.yml

