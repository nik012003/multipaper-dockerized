FROM azul/zulu-openjdk-alpine:17-jre
RUN apk add curl jq

ARG version=1.19
ARG build=12

ARG MASTER_PORT=35353
ENV MASTER_PORT $MASTER_PORT
ARG SERVER_PORT=25565
ENV SERVER_PORT $SERVER_PORT

#Download current MultiPaper-Master 
WORKDIR /opt/minecraft
ENV MULTIPAPERURL="https://multipaper.io/api/v2/projects/multipaper/versions/$version/builds/$build/"
RUN echo $MULTIPAPERURL 
RUN curl "$MULTIPAPERURL/downloads/"$(curl $MULTIPAPERURL | jq -r '.downloads.master.name') --output multipaper-master.jar
COPY start.sh .

EXPOSE $MASTER_PORT
EXPOSE $SERVER_PORT
WORKDIR /opt/storage
CMD sh /opt/minecraft/start.sh