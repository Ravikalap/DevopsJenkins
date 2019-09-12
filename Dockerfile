#Pull base image
FROM Apache Maven: 3.3.9

# Install app dependencies
RUN mvn install
RUN build -t jenkins-demo:${BUILD_NUMBER} .
RUN docker login --username=ravikala --password=ravisasi6
RUN docker push ravikala/jenkins-demo:${BUILD_NUMBER}

# Copy application to /app directory
COPY ./workplace/maven-project/webapp/target/*.war /app

# Provide defaults for an executing container
EXPOSE 8082

# Deploy changes to DockerHub


