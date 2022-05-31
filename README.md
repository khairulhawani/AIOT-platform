# AIOT-platform

## Service

![service](service.jpg)

1. A database service: ***MySQL*** with port ```3306```  
 Relational database for managing devices, a time series database for storing sensor tags.  
 (Using port ```8080``` to access the service ```adminer``` for managing the database.)

2. A dashboard service: ***Grafana*** with port ```3000```  
Capability to visualize the device topology, sensor tags and events.

3. A messaging service: ***RabbitMQ*** with port ```15672```  
Receiving and buffering the sensor tags.

4. An analysis service: ***Jupyter*** with port ```8888```  
Building models (rule-based or AI-based), analysing the data and mining the useful patterns from the data.



## Operation
Using Docker Compose is basically a three-step process:

Define your app's environment with a Dockerfile so it can be reproduced anywhere.
Define the services that make up your app in docker-compose.yml so they can be run together in an isolated environment.
Lastly, run docker compose up and Compose will start and run your entire app.

Clone this repository:
```
git clone https://github.com/khairulhawani/AIOT-platform.git
``` 

Run this command inside the directory to pull the image (initialize):
```
docker-compose up -d
```

Run this command inside the directory to start the service:
```
docker-compose start
```

Run this command inside the directory to stop the service:
```
docker-compose stop
```

Run this command inside the directory to clean the service:
```
docker-compose down
```


## Application Endpoint
You can check the container working by checking with:
```
{your_ip_address or localhost}:8080 --> Database Adminer
{your_ip_address or localhost}:3000 --> Grafana
{your_ip_address or localhost}:8888 --> Jupyter
{your_ip_address or localhost}:15672 --> RabbitMQ
```

## List the User to Login
You can login to the service (Application Endpoint Section) with:

Adminer Login 
```
DB : mydb
Username : user
Password : user
Port : 3306
```

Grafana Login 
```
Username : admin
Password : admin
```

RabbitMQ Credentials
```
IP Address : 203.145.218.196 (Or Local IP Address)
Username : guest
Password : guest
AMQP Port : 5672
```

If you need more specific command you can refer to the Docker documentation
https://docs.docker.com/

## How to Use The File in RabbitMQ
You can use the file in RabbitMQ

Run this command inside the rabbitmq directory to receive the message:
```
python3 receive.py

```

Run this command inside the rabbitmq directory to send the message:
```
python3 send.py

```
