# AIOT-platform

## Service
1. A database service: ***MySQL*** with port ```3306```  
 with a relational database for managing devices, a time series database for storing sensor tags. you can make own decision on the data stored for the events.

2. A dashboard service: ***Grafana*** with port ```3000```  
with capability to visualize the device topology, sensor tags and events.

3. A messaging service: ***RabbitMQ*** with port ```15672```  
receiving and buffering the sensor tags.

4. An analysis service: ***Jupyter*** with port ```8888```  
for building models (rule-based or AI-based), analysing the data and mining the useful patterns from the data.


## Operation
Using Docker Compose is basically a three-step process:

Define your app's environment with a Dockerfile so it can be reproduced anywhere.
Define the services that make up your app in docker-compose.yml so they can be run together in an isolated environment.
Lastly, run docker compose up and Compose will start and run your entire app.