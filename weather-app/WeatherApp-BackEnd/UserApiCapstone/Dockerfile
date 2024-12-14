FROM openjdk:18

ARG JAR_FILE=target/*.jar

ADD ${JAR_FILE} user_api.jar

EXPOSE 8090

CMD ["java", "-jar", "/user_api.jar"]