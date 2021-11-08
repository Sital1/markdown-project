<<<<<<< HEAD
<<<<<<< HEAD
FROM openjdk:11.0.11-jdk
<<<<<<< HEAD
COPY build/libs/doc-0.0.1-SNAPSHOT.jar app.jar
=======
COPY build/libs/auth-0.0.1-SNAPSHOT.jar app.jar
>>>>>>> def422d (added Dockerfile and fixed CI/CD pipeline)

ENTRYPOINT exec java $JAVA_OPTS -Djdk.tls.client.protocols=TLSv1.2 -jar /app.jar
=======
FROM nginx:alpine
=======
FROM nginx:latest
>>>>>>> 90cd82e (Updated dockefile)

# Removes the current directory to serve
RUN rm -f /usr/share/nginx/html/*

#Copies the actual directory to be served
COPY dist/frontend /usr/share/nginx/html

#Overwriting Nginx config file
COPY nginx.conf /etc/nginx/nginx.conf

# Exposing port 80 that nginx use
EXPOSE 80

# Hold the docker image running
<<<<<<< HEAD
<<<<<<< HEAD
CMD ["nginx","-g","dameon off;"]
>>>>>>> 00bf48d (fixed pipeline)
=======
CMD ["nginx","-g","dameon on;"]
>>>>>>> 90cd82e (Updated dockefile)
=======
CMD ["nginx","-g","daemon off;"]
>>>>>>> eb965d9 (Updated dockefile)
