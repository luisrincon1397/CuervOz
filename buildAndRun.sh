#!/bin/sh
mvn clean package && docker build -t com.dessit/CuervOz .
docker rm -f CuervOz || true && docker run -d -p 9080:9080 -p 9443:9443 --name CuervOz com.dessit/CuervOz