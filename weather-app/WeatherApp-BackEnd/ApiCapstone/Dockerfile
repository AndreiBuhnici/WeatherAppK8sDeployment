FROM openjdk:18

ARG JAR_FILE=target/*.jar

ADD ${JAR_FILE} api_capstone.jar

EXPOSE 8080

CMD ["java", "-jar", "/api_capstone.jar"]