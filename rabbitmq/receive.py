#!/usr/bin/env python
import pika, sys, os
import mysql.connector

def main():
    connection = pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
    channel = connection.channel()

    channel.queue_declare(queue='sensor')

    mydb = mysql.connector.connect(
        host="localhost",
        user="user",
        password="user",
        database="mydb"
    )

    def callback(ch, method, properties, body):
        timestamp = body[0] 
        min = body[1]
        max = body[2]
        avg = body[3]
        peak = body[4]
        peaktopeak = body[5]
        rms = body[6]

        mycursor = mydb.cursor()

        sql = "INSERT INTO tb_sensor (timestamp, min, max, avg, peak, peaktopeak, rms) VALUES (" + str(timestamp) + ", " + str(min) + ", " + str(max) + ", " + str(avg) + ", " + str(peak) + ", " + str(peaktopeak) + ", " + str(rms) + ")"
        mycursor.execute(sql)

        mydb.commit()

        # print(mycursor.rowcount, "record inserted.")

        # print(" [x] Received %r" % body)

    channel.basic_consume(queue='sensor', on_message_callback=callback, auto_ack=True)

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