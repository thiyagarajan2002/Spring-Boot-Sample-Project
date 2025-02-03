
# Use an official OpenJDK image as the base image
FROM ubuntu:latest
RUN  apt update &&  apt install openjdk-11-jdk -y &&  apt install maven -y

# Set the working directory in the container
WORKDIR /app

#copy the all files
COPY . /app

# Build the application using Maven
RUN mvn clean package
 

# Set the command to run the application
CMD ["java", "-jar", "target/BankApplicationBackend-0.0.1-SNAPSHOT.jar"]
