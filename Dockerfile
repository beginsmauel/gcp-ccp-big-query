FROM openjdk:8
COPY target/bigquery-0.0.1-SNAPSHOT.jar /bigquery_app.jar
ENV JAVA_OPTS=""
#ENTRYPOINT ["java", "-jar", "/app.jar"]
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /bigquery_app.jar" ]
