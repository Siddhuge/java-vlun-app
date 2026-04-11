FROM openjdk:8

WORKDIR /app

COPY . .

RUN javac App.java

CMD ["java", "App"]