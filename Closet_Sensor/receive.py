#!/usr/bin/env python
import pika, sys, os
import mysql.connector

def main():
    connection = pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
    channel = connection.channel()

    channel.queue_declare(queue='sensor_closet')

    mydb = mysql.connector.connect(
        host="localhost",
        user="user",
        password="user",
        database="mydb"
    )

    def callback_sensor_closet(ch, method, properties, body):
        body = body.decode('UTF-8').split(", ")
        timestamp = body[0] 
        peaktopeak = body[1]
        label = body[2]

        mycursor = mydb.cursor()

        sql = "INSERT INTO tb_closet (timestamp, peaktopeak, label) VALUES ('" + str(timestamp) + str(peaktopeak) + ", " + str(label) + ")"
        mycursor.execute(sql)

        mydb.commit()

        # print(mycursor.rowcount, "record inserted.")

        print(" [x] Received %r" % body)

    channel.basic_consume(queue='sensor_closet', on_message_callback=callback_sensor_closet, auto_ack=True)

    print(' [*] Waiting for messages. To exit press CTRL+C')
    channel.start_consuming()

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        print('Interrupted')
        try:
            sys.exit(0)
        except SystemExit:
            os._exit(0)