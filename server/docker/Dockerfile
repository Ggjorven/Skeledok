###############################################################################
# Build stage
###############################################################################
FROM eclipse-temurin:21-jdk AS build

WORKDIR /app

COPY gradlew settings.gradle.kts build.gradle.kts ./
COPY gradle ./gradle
COPY src ./src

RUN chmod +x gradlew && ./gradlew bootJar --no-daemon

###############################################################################
# Runtime image
###############################################################################
FROM eclipse-temurin:21-jre

WORKDIR /app

COPY --from=build /app/build/libs/*.jar ./app.jar
COPY application*.yml ./

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
