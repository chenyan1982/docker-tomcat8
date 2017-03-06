FROM tomcat:jre8

# Add admin/admin user
ADD tomcat-users.xml /opt/tomcat/conf/

EXPOSE 8080
EXPOSE 8009
VOLUME "/opt/tomcat/webapps"
WORKDIR /opt/tomcat

# Launch Tomcat
# CMD ["/opt/tomcat/bin/catalina.sh", "run"]
