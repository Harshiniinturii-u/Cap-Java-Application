
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/cap-java-application.jar app.jar
EXPOSE 8080
ENV JAVA_OPTS="-Xms256m -Xmx512m"
ENTRYPOINT ["java", "-jar", "app.jar"]