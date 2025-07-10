# 第一阶段：构建 jar 包
FROM maven:3.8.8-eclipse-temurin-8 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# 第二阶段：运行 jar 包
FROM eclipse-temurin:8-jre
WORKDIR /app
COPY --from=builder /app/target/yin-0.0.1-SNAPSHOT.jar /app/yin-0.0.1-SNAPSHOT.jar
EXPOSE 8888
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/yin-0.0.1-SNAPSHOT.jar", "--server.address=0.0.0.0"]
