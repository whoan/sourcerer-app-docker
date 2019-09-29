FROM openjdk:8-jdk-alpine

RUN apk add --no-cache bash curl

ADD https://raw.githubusercontent.com/sourcerer-io/sourcerer-app/develop/src/install/install /files/install

RUN SERVER_EXT=https://sourcerer.io bash /files/install

ENTRYPOINT [ "sourcerer" ]
