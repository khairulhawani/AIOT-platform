# AIOT-platform

## Service
xxxxxxxxxxxxxxxxx


## Operation
Using Docker Compose is basically a three-step process:

Define your app's environment with a Dockerfile so it can be reproduced anywhere.
Define the services that make up your app in docker-compose.yml so they can be run together in an isolated environment.
Lastly, run docker compose up and Compose will start and run your entire app.

Clone this repository:
```
git clone https://github.com/khairulhawani/AIOT-platform.git
``` 

Run docker-compose up command inside the directory:
```
docker-compose up -d
```

You can check the container working by checking with:
```
{your_ip_address or localhost}:8080 --> Database
{your_ip_address or localhost}:3000 --> Grafana
{your_ip_address or localhost}:8888 --> Jupyter
{your_ip_address or localhost}:15672 --> RabbitMQ
```
