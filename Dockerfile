FROM java:8
COPY ./mysql-connector-java-8.0.13.jar /mysql-connector-java-8.0.13.jar
COPY ./mysql.java /mysql.java
WORKDIR /
RUN javac Main.java
CMD ["java", "-classpath", "mysql-connector-java-8.0.13.jar:.", "Main"]

