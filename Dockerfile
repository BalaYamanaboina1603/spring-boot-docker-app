# 1. Base image
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install JDK 17
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean

# Set JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH


# 2. Set working directory
WORKDIR /app

# 3. Copy JAR file (use * if version changes often)
COPY target/*.jar app.jar

# 4. Expose port
EXPOSE 8080

# 5. Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
