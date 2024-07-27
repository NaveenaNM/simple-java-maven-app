# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Package the application using Maven
RUN ./mvnw package

# Run the jar file
CMD ["java", "-jar", "target/my-java-app-1.0-SNAPSHOT.jar"]

