FROM openjdk:11.0.11-jdk
<<<<<<< HEAD
COPY build/libs/doc-0.0.1-SNAPSHOT.jar app.jar
=======
COPY build/libs/auth-0.0.1-SNAPSHOT.jar app.jar
>>>>>>> def422d (added Dockerfile and fixed CI/CD pipeline)

ENTRYPOINT exec java $JAVA_OPTS -Djdk.tls.client.protocols=TLSv1.2 -jar /app.jar