FROM eclipse-temurin:17-alpine

COPY target/todo-service.jar /

RUN apk upgrade --no-cache && \
    apk add --no-cache libgcc libstdc++ ncurses-libs

ENTRYPOINT ["java", "-jar", "/todo-service.jar"]
