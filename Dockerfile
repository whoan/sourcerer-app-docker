FROM openjdk:8

ADD https://raw.githubusercontent.com/sourcerer-io/sourcerer-app/develop/src/install/install /files/install

RUN SERVER_EXT=https://sourcerer.io bash /files/install

ENTRYPOINT [ "sourcerer" ]
