#Pull base image
FROM maven:3.3.9

# Copy application to /app directory
COPY ./workplace/maven-project/webapp/target/*.war /app

# Provide defaults for an executing container
EXPOSE 8082
