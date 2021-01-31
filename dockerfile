FROM openjdk:8-jdk-alpine
VOLUME /tmp
USER root
RUN pwd
RUN mkdir /home/ec2-user/logs
RUN pwd
RUN chown root /home/ec2-user/logs
COPY target/demo-0.0.1-SNAPSHOT.jar demo.jar
USER ec2-user
ENTRYPOINT ["java", "-jar", "demo.jar"]
