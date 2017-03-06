FROM tomcat:jre8

# Add admin/admin user
 ADD tomcat-users.xml /usr/local/tomcat/conf/

 EXPOSE 8080
# EXPOSE 8009
 VOLUME "/usr/local/tomcat/webapps"
 WORKDIR /usr/local/tomcat

# Launch Tomcat
 CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
