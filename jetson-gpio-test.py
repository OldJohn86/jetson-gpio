import Jetson.GPIO as GPIO
import time as time

LED_Pin = 11
GPIO.setwarnings(False)

def main():
    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(LED_Pin, GPIO.OUT, initial=GPIO.HIGH)

    try:
        while True:
            GPIO.output(LED_Pin, GPIO.HIGH)
            time.sleep(2)
            GPIO.output(LED_Pin, GPIO.LOW)
            time.sleep(2)
    finally:
        GPIO.cleanup()

if __name__ == '__main__':
    main()
