# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Make the Maven wrapper executable
RUN chmod +x mvnw

# Package the application using Maven
RUN ./mvnw clean package

# Run the jar file
CMD ["java", "-jar", "target/my-java-app-1.0-SNAPSHOT.jar"]

