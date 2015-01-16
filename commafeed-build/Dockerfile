FROM maven:3-jdk-8

MAINTAINER Mehmet Mersin <mmersin@gmail.com>

RUN apt-get update && apt-get install -y g++ build-essential && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN update-ca-certificates -f

RUN mkdir /commafeed
VOLUME /commafeed
WORKDIR /commafeed
CMD [ "mvn", "clean", "package" ]

