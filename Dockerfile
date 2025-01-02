# Use a base image with JDK
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file into the Docker container
COPY target/ArifRepCrud.jar /app/ArifRepCrud.jar

# Expose the port that the application will run on
EXPOSE 9192


# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "ArifRepCrud.jar"]
