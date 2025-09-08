# Use an official OpenJDK runtime as the parent image
FROM openjdk:17-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the application's jar file into the container
COPY target/my-web-app-1.0-SNAPSHOT.jar /app/my-web-app.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the jar file when the container launches
CMD ["java", "-jar", "my-web-app.jar"]
