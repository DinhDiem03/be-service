FROM openjdk:17

WORKDIR /app/BE

COPY target/spring-boot-docker.jar spring-boot-docker.jar

COPY src/main/resources/application.properties application.properties

ENTRYPOINT ["java", "-jar", "spring-boot-docker.jar"," -Dspring.config.location=src/main/resources/application.properties"]
