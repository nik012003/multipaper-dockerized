FROM azul/zulu-openjdk-alpine:17-jre
RUN apk add curl jq

ARG version=1.19
ARG build=12

ARG MASTER_ADDRESS
ENV MASTER_ADDRESS $MASTER_ADDRESS

ARG SERVER_PROPIETIES
ENV SERVER_PROPIETIES $SERVER_PROPIETIES
WORKDIR /opt/minecraft

#Download current MultiPaper 
ENV MULTIPAPERURL="https://multipaper.io/api/v2/projects/multipaper/versions/$version/builds/$build/"
RUN curl "$MULTIPAPERURL/downloads/"$(curl $MULTIPAPERURL | jq -r '.downloads.application.name') --output multipaper.jar

COPY ./spigot.yml .
COPY ./start.sh .

CMD sh start.sh