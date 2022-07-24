FROM azul/zulu-openjdk-alpine:17-jre
RUN apk add curl jq

ARG version=1.19
ARG build=12

#Download current MultiPaper-Master 
WORKDIR /opt/minecraft
ENV MULTIPAPERURL="https://multipaper.io/api/v2/projects/multipaper/versions/$version/builds/$build/"
RUN echo $MULTIPAPERURL 
RUN curl "$MULTIPAPERURL/downloads/"$(curl $MULTIPAPERURL | jq -r '.downloads.master.name') --output multipaper-master.jar

EXPOSE 35353
EXPOSE 25565
CMD ["java", "-jar", "multipaper-master.jar", "35353", "25565"]