FROM eclipse-temurin:17-jdk

WORKDIR /app
COPY . /app

RUN ./mvnw clean package -DskipTests

EXPOSE 8761

CMD ["java", "-jar", "target/eureka.jar"]
