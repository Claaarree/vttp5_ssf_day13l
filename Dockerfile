# the base image with JDK used to build and run your java application
FROM eclipse-temurin:23-jdk

# labelling the dockerfile
LABEL MAINTAINER="Clare"
LABEL description="This is VTTP5 SSF Day13 lecture demo and walkthrough"
LABEL name="vttp5a-ssf-13l"

ARG APP_DIR=/APP_DIR

# directory where your source code will reside
# directory where you copy your project to (in the next step)
WORKDIR ${APP_DIR}

# copy the required files and/or directories into the image
COPY pom.xml .
COPY mvnw .
COPY mvnw.cmd .
COPY src src
COPY .mvn .mvn

# Package the application using the RUN directive
# this will download the dependencies defined in pom.xml
# compile and package to jar
RUN chmod a+x ./mvnw && ./mvnw package -Dmaven.test.skip=true

ENV SERVER_PORT=3000

EXPOSE ${SERVER_PORT}

ENTRYPOINT SERVER_PORT=${SERVER_PORT} java -jar target/vttp5a-ssf-day13l-0.0.1-SNAPSHOT.jar