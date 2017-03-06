FROM tomcat:jre8

# 增加 admin/admin user
 ADD tomcat-users.xml /usr/local/tomcat/conf/
 
# 增加mysql驱动
 ADD mysql-connector-java-6.0.5 /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext/
 ADD mysql-connector-java-6.0.5 /usr/lib/jvm/java-1.8.0-openjdk-amd64/jre/lib/ext/ 
 

 EXPOSE 8080
# EXPOSE 8009
 VOLUME "/usr/local/tomcat/webapps"
 WORKDIR /usr/local/tomcat

# 启动 tomcat
 CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
