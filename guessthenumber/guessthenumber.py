from subprocess import call
from math import e
import os
import random
import time

def clear():
    command = 'cls'
    os.system(command)

score = 0

print('Er is een random getal tussen de 1 en de 1000')
time.sleep(2)
print('Er zijn 20 rondes')
time.sleep(1)
print('Je krijgt 10 gokken')
time.sleep(2)
clear()

for ronde in range(1,21,1):
    numberToGuess = int(random.randint(1,1000))

    for poging in range(1,11,1):
        print('Ronde ' + str(ronde))
        print('Poging ' + str(poging))

        userGuess = str(input('Raad het getal: '))

        if userGuess == 'quit':
            print('Het programma word afgeloten')
            time.sleep(1)
            clear()
            exit()

        number = int(userGuess) - numberToGuess

        if int(userGuess) == numberToGuess:
            score = score + 1
            print('Je hebt het getal geraden')
            print('Score: ' + str(score))
            time.sleep(2)
            clear()
            break

        elif int(userGuess) < numberToGuess:
            print('Het getal ligt hoger')
            time.sleep(1.5)
            clear()

        elif int(userGuess) > numberToGuess:
            print('Het getal ligt lager')
            time.sleep(1.5)
            clear()

        if abs(number) < 50:
            print('je zit warm')
        else:
            print('je zit koud')

        if poging == 10:
            print('Het getal was: ' + str(numberToGuess))

print('Eindscore: ' + str(score))