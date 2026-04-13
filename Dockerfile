FROM openjdk:8

WORKDIR /app

COPY . .

RUN javac App.java

RUN addgroup -S app && adduser -S app -G app
RUN chown -R app:app /app
USER app
CMD ["java", "App"]