FROM openjdk:8-alpine
MAINTAINER atze.devries@naturalis.nl

RUN apk --no-cache add git apache-ant openssh

#VOLUME /tmp/build


#RUN git clone http://github.com/naturalis/naturalis_data_api

#WORKDIR ~/naturalis_data_api/nl.naturalis.nba.build
RUN mkdir /payload && \
    mkdir /source
#ADD prepare-git.sh /prepare-git.sh
ADD build-nba-service.sh /build-nba-service.sh
RUN chmod +x /build-nba-service.sh
ADD build.v2.properties /build.v2.properties
ENTRYPOINT /build-nba-service.sh
