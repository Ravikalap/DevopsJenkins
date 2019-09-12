#Pull base image
FROM tomcat:8

# Copy application to /app directory
COPY ./webapp.war /app

# Provide defaults for an executing container
EXPOSE 8080
CMD ["catalina.sh", "run"]
