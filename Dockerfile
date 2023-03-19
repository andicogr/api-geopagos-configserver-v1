FROM openjdk:11
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY target/config-server-0.0.1-SNAPSHOT.jar configserver.jar
EXPOSE 8888
ENTRYPOINT exec java $JAVA_OPTS -jar configserver.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar configserver.jar
