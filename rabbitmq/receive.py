#!/usr/bin/env python
import pika, sys, os
import mysql.connector

def main():
    connection = pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
    channel = connection.channel()

    channel.queue_declare(queue='sensor1')
    channel.queue_declare(queue='sensor2')
    channel.queue_declare(queue='sensor3')

    mydb = mysql.connector.connect(
        host="localhost",
        user="user",
        password="user",
        database="mydb"
    )

    def callback_sensor1(ch, method, properties, body):
        body = body.decode('UTF-8').split(", ")
        timestamp = body[0] 
        min = body[1]
        max = body[2]
        avg = body[3]
        peak = body[4]
        peaktopeak = body[5]
        rms = body[6]

        mycursor = mydb.cursor()

        sql = "INSERT INTO tb_sensor (timestamp, min, max, avg, peak, peaktopeak, rms, sensor_id) VALUES ('" + str(timestamp) + "', " + str(min) + ", " + str(max) + ", " + str(avg) + ", " + str(peak) + ", " + str(peaktopeak) + ", " + str(rms) + ", 1)"
        mycursor.execute(sql)

        mydb.commit()

        # print(mycursor.rowcount, "record inserted.")

        # print(" [x] Received %r" % body)

    def callback_sensor2(ch, method, properties, body):
        body = body.decode('UTF-8').split(", ")
        timestamp = body[0] 
        min = body[1]
        max = body[2]
        avg = body[3]
        peak = body[4]
        peaktopeak = body[5]
        rms = body[6]

        mycursor = mydb.cursor()

        sql = "INSERT INTO tb_sensor (timestamp, min, max, avg, peak, peaktopeak, rms, sensor_id) VALUES ('" + str(timestamp) + "', " + str(min) + ", " + str(max) + ", " + str(avg) + ", " + str(peak) + ", " + str(peaktopeak) + ", " + str(rms) + ", 2)"
        mycursor.execute(sql)

        mydb.commit()

        # print(mycursor.rowcount, "record inserted.")

        # print(" [x] Received %r" % body)

    def callback_sensor3(ch, method, properties, body):
        body = body.decode('UTF-8').split(", ")
        timestamp = body[0] 
        min = body[1]
        max = body[2]
        avg = body[3]
        peak = body[4]
        peaktopeak = body[5]
        rms = body[6]

        mycursor = mydb.cursor()

        sql = "INSERT INTO tb_sensor (timestamp, min, max, avg, peak, peaktopeak, rms, sensor_id) VALUES ('" + str(timestamp) + "', " + str(min) + ", " + str(max) + ", " + str(avg) + ", " + str(peak) + ", " + str(peaktopeak) + ", " + str(rms) + ", 3)"
        mycursor.execute(sql)

        mydb.commit()

        # print(mycursor.rowcount, "record inserted.")

        # print(" [x] Received %r" % body)

    channel.basic_consume(queue='sensor1', on_message_callback=callback_sensor1, auto_ack=True)
    channel.basic_consume(queue='sensor2', on_message_callback=callback_sensor2, auto_ack=True)
    channel.basic_consume(queue='sensor3', on_message_callback=callback_sensor3, auto_ack=True)

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