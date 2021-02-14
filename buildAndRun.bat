@echo off
call mvn clean package
call docker build -t com.dessit/CuervOz .
call docker rm -f CuervOz
call docker run -d -p 9080:9080 -p 9443:9443 --name CuervOz com.dessit/CuervOz