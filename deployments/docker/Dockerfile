## Build the image based python3
FROM maven:3.5.2-jdk-8

## Copy all the packages
COPY . /app

## Change the default folder
WORKDIR /app

## Install all packages
RUN mvn install 

## Default port is 5000
EXPOSE 8080

## When container is started python app.py
CMD ["/bin/sh", "-c", "java -jar target/food_delivery-0.1.jar"]