FROM		tomcat:8.0.21-jre8
MAINTAINER	Shy Tamir (shytamir@gmail.com)
COPY		./sample.war /use/local/tomcat/webapps/
EXPOSE		8080