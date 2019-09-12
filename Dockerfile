#Pull base image
FROM apache:8

# Copy application to /app directory
COPY ./var/lib/jenkins/workspace/Dockerizejenkinspipe/webapp/target/*.war /app

# Provide defaults for an executing container
EXPOSE 8082
