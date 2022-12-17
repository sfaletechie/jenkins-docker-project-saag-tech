# Pull base image
From consol/tomcat-7.0

# Maintainer
MAINTAINER "rajusw804@gmail.com"
COPY target/*.war /opt/tomcat/webapps
