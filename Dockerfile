#FROM openjdk:17
#EXPOSE 7000
#ADD target/assesment-project.jar assesment-project.jar
#ENTRYPOINT ["java","-jar","/assesment-project.jar"]

# Use the OpenJDK 11 image as the base image
FROM openjdk:17
EXPOSE 7000
ADD target/assesment-project.jar assesment-project.jar
ENTRYPOINT ["java","-jar","/assesment-project.jar"]
## Create a new app directory for my application files
#RUN mkdir /app
#
## Copy the app files from host machine to image filesystem
#COPY target/assesment-project.jar /app
#
## Set the directory for executing future commands
#WORKDIR /app
#
## Run the Main class
#CMD java -jar assesment-project.jar