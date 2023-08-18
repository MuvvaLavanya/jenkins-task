FROM openjdk:17
EXPOSE 7000
ADD target/assesment-project.jar assesment-project.jar
ENTRYPOINT ["java","-jar","/assesment-project.jar"]
