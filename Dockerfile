#Pull base image
FROM Apache Maven: 3.3.9

# Install app dependencies
RUN mvn install

# Copy application to /app directory
COPY ./workplace/maven-project/webapp/target/*.war /app

# Provide defaults for an executing container
EXPOSE 8082

# Deploy changes to DockerHub


