#Pull base image
FROM tomcat:8

# Copy application to /app directory
COPY ${WORKSPACE}/Dockerizejenkinspipe/webapp/target/webapp.war ${WORKSPACE}/DevopsJenkins

# Provide defaults for an executing container
EXPOSE 8080
CMD ["catalina.sh", "run"]
