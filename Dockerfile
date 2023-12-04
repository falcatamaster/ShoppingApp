FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY ShoppingApp.war app.war
ENTRYPOINT ["java","-jar","/app.war"]