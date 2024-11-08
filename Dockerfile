# Start with a base image containing Java runtime
FROM openjdk:17-jdk-alpine

# Add Maintainer Info
LABEL maintainer="cantu.jorge2001@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8192

# The application's jar file
ARG JAR_FILE=target/antlr-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} antlr-api.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/antlr-api.jar"]

# docker build
# sudo docker build -t <jorgegarciaa>/antlr-api .

# docker run
# sudo docker run --name antlr-calculator-api -p 8080:8080 -d jorgegarciaa/antlr-api 
