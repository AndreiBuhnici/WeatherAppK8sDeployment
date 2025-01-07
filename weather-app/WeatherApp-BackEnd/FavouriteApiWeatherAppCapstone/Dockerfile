FROM openjdk:18

ARG JAR_FILE=target/*.jar

ADD ${JAR_FILE} favourite_api.jar

EXPOSE 9010

CMD ["java", "-jar", "/favourite_api.jar"]