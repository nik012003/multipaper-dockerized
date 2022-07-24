FROM azul/zulu-openjdk-alpine:17-jre
RUN apk add curl

ARG version=1.19
ARG MASTER_ADDRESS
ENV MASTER_ADDRESS $MASTER_ADDRESS
#Download current MultiPaper 
WORKDIR /opt/minecraft
ENV MULTIPAPERURL="https://multipaper.io/api/v2/projects/multipaper/versions/1.19/builds/11/downloads/multipaper-1.19-11.jar"
RUN curl $MULTIPAPERURL --output multipaper.jar
COPY ./spigot.yml .
COPY ./server.properties .
CMD java -Dcom.mojang.eula.agree=true -DmultipaperMasterAddress=$MASTER_ADDRESS:35353 -jar multipaper.jar