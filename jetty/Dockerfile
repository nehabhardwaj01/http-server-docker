FROM alpine:latest
MAINTAINER NEHA BHARDWAJ

ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre \
    PATH=$PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin \
    JAVA_VERSION=8u191

EXPOSE 8080

RUN apk add --update bash wget tar openjdk8-jre && rm -rf /var/cache/apk/*

# Copy Jars
COPY . /

RUN wget -q -O /jetty.tar.gz "https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.4.15.v20190215/jetty-distribution-9.4.15.v20190215.tar.gz"

# Install Jetty
RUN tar -xvf /jetty.tar.gz && rm /jetty.tar.gz && mv jetty-distribution-9.4.15.v20190215 /jetty

# Clean-Up
RUN chmod +x entrypoint.sh && apk del wget tar

ENTRYPOINT /entrypoint.sh
