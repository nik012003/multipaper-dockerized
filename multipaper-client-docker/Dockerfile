FROM azul/zulu-openjdk-alpine:17-jre
RUN apk add curl jq

LABEL Nicola Guerrera <guerrera.nicola@gmail.com>

ARG version=1.18.2

#Download current MultiPaper 
WORKDIR /opt/minecraft
ENV MULTIPAPERURL="https://multipaper.io/api/v2/projects/multipaper/versions/1.18.2/builds/82/downloads/multipaper-1.18.2-82.jar"
RUN curl $MULTIPAPERURL --output multipaper.jar
COPY ./paper.yml .
COPY ./server.properties .
EXPOSE 30066
CMD ["java", "-Dcom.mojang.eula.agree=true", "-jar", "multipaper.jar"]
