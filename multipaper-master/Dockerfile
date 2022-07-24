FROM azul/zulu-openjdk-alpine:17-jre
RUN apk add curl jq

ARG version=2.10

#Download current MultiPaper-Master 
WORKDIR /opt/minecraft
ENV MULTIPAPERURL="https://multipaper.io/api/v2/projects/multipaper/versions/1.19/builds/11/downloads/MultiPaper-Master-2.10.0-all.jar"
RUN curl $MULTIPAPERURL --output multipaper-master.jar

EXPOSE 35353
EXPOSE 25565
CMD ["java", "-jar", "multipaper-master.jar", "35353", "25565"]