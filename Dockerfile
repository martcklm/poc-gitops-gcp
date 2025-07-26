FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY . .
RUN ./mvnw package -DskipTests || mvn package -DskipTests
EXPOSE 8080
ENTRYPOINT ["java","-jar","target/demo-0.0.1-SNAPSHOT.jar"]