#FROM openjdk:11.0.5-jdk
#ADD *.jar app.jar
#ENTRYPOINT java -jar app.jar

# Base image with Tomcat
FROM tomcat:9

ADD *.war webapp.war

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
