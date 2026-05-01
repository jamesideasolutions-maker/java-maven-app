FROM tomcat:9.0

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR as ROOT (important)
COPY target/maven-cloudaseem-app.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
