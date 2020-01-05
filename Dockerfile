FROM tomcat:9.0.30-jdk8-openjdk-slim

ADD ./target/outertuning.war /usr/local/tomcat/webapps/

RUN cd /usr/local/tomcat/webapps/ && rm -rf ROOT.war ROOT/ && mv outertuning.war ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]