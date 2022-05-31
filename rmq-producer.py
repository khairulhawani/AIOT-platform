import pika


parameters = pika.URLParameters('amqp://guest:guest@203.145.218.196:5672/')
connection = pika.BlockingConnection(parameters)
channel = connection.channel()

channel.queue_declare(queue='hello')

channel.basic_publish(exchange='',
                      routing_key='hello',
                      body='This is course AIMS, NPTU')
                      
print(" [x] Sent 'Hello World!'")

connection.close()