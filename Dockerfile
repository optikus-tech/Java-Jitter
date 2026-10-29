FROM amazoncorretto:25

RUN dnf install -y iputils && dnf clean all

WORKDIR /app

COPY deploy/jitter-pi-1.0-SNAPSHOT.jar app.jar

CMD ["java", "--enable-native-access=ALL-UNNAMED", "-jar", "app.jar"]