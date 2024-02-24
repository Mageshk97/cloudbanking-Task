#!/bin/bash

# Install Java and Maven
sudo apt-get update
sudo apt-get install -y default-jdk maven

# Clone Spring Petclinic repository
git clone https://github.com/spring-petclinic/spring-framework-petclinic.git
cd spring-framework-petclinic

# Build the application with MySQL profile
./mvnw package -P MySQL

# Deploy the application to Tomcat
sudo cp target/petclinic.war /var/lib/tomcat8/webapps/
sudo systemctl restart tomcat8
