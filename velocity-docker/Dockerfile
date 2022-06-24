FROM azul/zulu-openjdk-alpine:17-jre
RUN apk add curl jq

LABEL Nicola Guerrera <guerrera.nicola@gmail.com>

ARG version=3.1.1

#Download current velocity 
WORKDIR /opt/velocity
ENV VELOCITY="https://api.papermc.io/v2/projects/velocity/versions/3.1.2-SNAPSHOT/builds/159/downloads/velocity-3.1.2-SNAPSHOT-159.jar"
RUN curl $VELOCITY --output velocity.jar
COPY ./velocity.toml .
COPY ./forwarding.secret .
EXPOSE 35353
CMD ["java", "-jar", "velocity.jar"]
