FROM openjdk:8-jdk-alpine
USER root
RUN pwd
RUN mkdir -p /home/logs
RUN chown root /home/logs
/home/ec2-user/project/SpringDemo
COPY target/demo-0.0.1-SNAPSHOT.jar demo.jar
USER ec2-user
ENTRYPOINT ["java", "-jar", "demo.jar"]
