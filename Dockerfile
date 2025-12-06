# 1. Base image
FROM eclipse-temurin:17-jdk-alpine

# 2. Set working directory
WORKDIR /app

# 3. Copy JAR file (use * if version changes often)
COPY target/*.jar app.jar

# 4. Expose port
EXPOSE 8080

# 5. Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
