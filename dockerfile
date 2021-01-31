FROM openjdk:8-jdk-alpine
USER root
RUN pwd
RUN mkdir -p /home/ec2-user/logs
RUN chown ec2-user /home/ec2-user/logs
COPY target/demo-0.0.1-SNAPSHOT.jar demo.jar
USER ec2-user
ENTRYPOINT ["java", "-jar", "demo.jar"]
