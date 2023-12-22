FROM gradle:jdk17 AS build
WORKDIR /app
COPY . /app
RUN gradle build -x test


FROM openjdk:17-alpine
WORKDIR /app
COPY --from=build /app/build/libs/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]