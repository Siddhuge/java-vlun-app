FROM openjdk:8-slim

WORKDIR /app

COPY . .

RUN javac App.java

RUN addgroup -S app && adduser -S app -G app
USER app
CMD ["java", "App"]