FROM ubuntu:latest
LABEL authors="Enes"

ENTRYPOINT ["top", "-b"]

# Uygulamanın çalışması için JDK lazım.
FROM eclipse-temurin:17-jdk

 # Projemizin JAR dosyasının konumu
ARG JAR_FILE=target/*.jar

# Projenin jar halini dockerın içine şu isimle kopyala
COPY ${JAR_FILE} devops-hello-app.jar

# Terminal Komutları
CMD apt-get upgrade -y

# iç portu sabitlemek için
EXPOSE 8080

# uygulamanın çalışacağı komut
ENTRYPOINT ["java", "-jar", "devops-hello-app.jar"]


