FROM maven:3.8.7-openjdk:latest
WORKDIR /app
COPY pom.xml ./
RUN mvn clean package
RUN openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
