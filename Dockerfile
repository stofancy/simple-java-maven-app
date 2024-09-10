# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jre-slim

# Set the working directory in the container
WORKDIR /app

COPY ./target/my-app-1.0-SNAPSHOT.jar .

# Expose the port the application runs on
EXPOSE 8080

# Specify the command to run the application
ENTRYPOINT [ "java", "-jar", "./my-app-1.0-SNAPSHOT.jar" ]