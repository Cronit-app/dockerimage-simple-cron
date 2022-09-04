# Cronit - Simple cron

Simple base image for making recurring tasks inside a docker container

Extend this image to easily create jobs that should run periodically. 
For instance, you can do: 
```
FROM cronit/simple-cron # Inherit from the base image
#Set up all your dependencies 
COPY jobs.cron ./ # Copy your local config
```

jobs.cron can be any valid crontab file, like: 
```
* * * * * echo "Hello"
``` 

Once this is done, just run your docker image, for instance using `docker run -it $(docker build -q .)`  and the content with jobs.cron will be scheduled periodically

## About is 

This image is made by the Cronit team. 

 Cronit ([https://cronit.app](https://cronit.app)) is an online scheduling platform, a tool you can use to plan and execute online cronjobs, without any server setup or any infrastructure.
