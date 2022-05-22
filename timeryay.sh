#!/usr/local/bin/python3

import os
import time

minutes:int = int (input("Minutes: "))
seconds:int = int (input("Seconds: "))

timer_period:int = (60 * minutes) + seconds

# CountDown from Value from User to 0
while timer_period:
  mins, secs  = divmod(timer_period, 60)
  timer = '{:02d}:{:02d}'.format(mins, secs)
  print(timer, end="\r")
  time.sleep(1)
  timer_period = timer_period - 1

os.system('say "Timer Done!"')


