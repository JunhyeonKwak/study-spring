FROM openjdk:17-alpine
WORKDIR '/usr/src/app'
COPY /build/libs/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]