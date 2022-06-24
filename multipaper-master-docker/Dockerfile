FROM azul/zulu-openjdk-alpine:17-jre
RUN apk add curl jq

LABEL Nicola Guerrera <guerrera.nicola@gmail.com>

ARG version=1.18.2

#Download current MultiPaper-Master 
WORKDIR /opt/minecraft
ENV MULTIPAPERURL="https://multipaper.io/api/v2/projects/multipaper/versions/1.18.2/builds/82/downloads/MultiPaper-Master-2.8.6-all.jar"
RUN curl $MULTIPAPERURL --output multipaper-master.jar

EXPOSE 35353
CMD ["java", "-jar", "multipaper-master.jar"]
