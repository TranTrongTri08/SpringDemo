FROM openjdk:8-jdk-alpine
VOLUME /tmp
USER root
RUN pwd
RUN ls -la
RUN getent passwd
RUN mkdir /var/logs
RUN pwd
RUN chown root /var/logs
COPY target/demo-0.0.1-SNAPSHOT.jar demo.jar
#USER ec2-user
ENTRYPOINT ["java", "-jar", "demo.jar"]
