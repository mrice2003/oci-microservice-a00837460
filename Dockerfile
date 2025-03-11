FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-a01793686
COPY target/*.jar ./
COPY src/main/resources/Wallet_javadev ./Wallet_javadev/
ENV TNS_ADMIN=/oci-microservice-a01793686/Wallet_javadev
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-a01793686.jar" ]