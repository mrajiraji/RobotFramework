from subprocess import call
import os
import schedule
import time

def gmail():
    call(['C:/Users/dell 6th/Python/Python39/python.exe', '-m', 'robot',
          'C:/Users/dell 6th/PycharmProjects/pythonProject/TestCases/Sun.robot'])


schedule.every(5).hours.do(gmail)
time.sleep(2)

while 1:
    schedule.run_pending()
    time.sleep(3)