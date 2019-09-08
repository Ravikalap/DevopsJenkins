#Pull base image
FROM Apache Maven: 3.3.9

# Choosing a WORKDIR
WORKDIR /usr/src/app

# Copying our project into the image
COPY . /usr/src/app

# Install app dependencies
RUN mvn install
RUN docker build -t jenkins-demo .
RUN docker images

# Copy application to /app directory
COPY . /app

# Provide defaults for an executing container
EXPOSE 8080
