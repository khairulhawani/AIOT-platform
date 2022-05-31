#!/usr/bin/env python
import pika

connection = pika.BlockingConnection(
    pika.ConnectionParameters('amqp://guest:guest@203.145.218.196:5672/'))
channel = connection.channel()

channel.queue_declare(queue='sensor')

channel.basic_publish(exchange='', routing_key='sensor', body="'2022-05-25 20:40:17.009', '4.92139', '4.92475', '4.92318', '4.92475', '0.00335503', '4.92313'")
print(" [x] Sent")
connection.close()