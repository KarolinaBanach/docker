FROM java:8
MAINTAINER Karolina Banach
COPY ./mysql-connector-java-8.0.13.jar /mysql-connector-java-8.0.13.jar
COPY ./Main.java /Main.java
WORKDIR /
RUN javac Main.java
CMD ["java", "-classpath", "mysql-connector-java-8.0.13.jar:.", "Main"]

