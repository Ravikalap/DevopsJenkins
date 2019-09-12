#Pull base image
FROM tomcat:8

# Copy application to /app directory
ADD target/webapp.war webapp/app

# Provide defaults for an executing container
EXPOSE 8082
CMD ["catalina.sh", "run"]
