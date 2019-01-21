@echo off

docker build -t icalendar .
docker tag icalendar:latest garymcwilliams/icalendar:latest
docker push garymcwilliams/icalendar:latest

