#Pull base image
FROM tomcat:8

# Copy application to /app directory
COPY target/webapp.war /usr/local/tomcat/

# Provide defaults for an executing container
EXPOSE 8082
CMD ["catalina.sh", "run"]
