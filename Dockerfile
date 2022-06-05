FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY build/libs/6422-sprinboot -0.0.1-SNAPSHOT.jar 6422sprinboot.jar
EXPOSE 8181
ENTRYPOINT exec java $JAVA_OPTS -jar 6422sprinboot.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar 6422sprinboot.jar
