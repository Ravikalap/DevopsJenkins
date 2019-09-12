#Pull base image
FROM tomcat:8

# Copy application to /app directory
COPY target/*.war /app

# Provide defaults for an executing container
EXPOSE 8082
