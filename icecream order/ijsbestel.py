import time
import os
from slowprint.slowprint import *

def clear():
    command = 'cls'
    os.system(command)

def stop():
    clear()
    slowprint('je bestelling word gestopt', 0.1)
    time.sleep(1)
    clear()
    exit()

def stap2(bo):
    slowprint('Wilt u de ' + str(bo) + ' bolletjes in bak of hoorn ' , 0.1)
    keuze = input('')
    if keuze == 'bakje' or 'bak':
        clear()
        ba = 1
        bakjes(bo,ba)
    elif keuze == 'hoorntje' or 'hoorn':
        clear()
        ho = 1
        hoorntjes(bo,ho)
    elif keuze == 'back':
        bolletjes()
    elif keuze == 'quit':
        stop()
    else:
        slowprint('Sorry dat is geen optie')
        time.sleep(1)
        clear()
        return stap2(bo)

def hoorntjes(bo,ho):
    slowprint('je krijgt een hoorntje met ' + str(bo) + ' bolletjes', 0.1)
    time.sleep(2)
    clear()
    ba = 0
    smaken(bo,ba,ho)

def bakjes(bo,ba):
    slowprint('U krijgt een bakje met ' + str(bo) + ' bolletjes', 0.1)
    time.sleep(2)
    clear()
    ho = 0
    smaken(bo,ba,ho)

def bolletjes():
    clear()
    slowprint('Hoeveel bolletjes wilt u?', 0.1)
    bolletje = int(input(''))
    if int(bolletje) <= 3:
        time.sleep(0.5)
        clear()
        stap2(bolletje)
    elif int(bolletje) <= 8:
        time.sleep(0.5)
        clear()
        ba = 1
        bakjes(bolletje, ba)
    elif bolletje > 8:
        slowprint('Sorry dat is geen optie' , 0.1)
        time.sleep(1)
        clear()
        return bolletjes()

def smaken(bo,ba,ho):

    vanille = 0
    chocolade = 0
    aardbij = 0
    munt = 0

    bo = bo + 1
    print('Smaken:')
    print('vannille     - V')
    print('chocolade    - C')
    print('aardbij      - A')
    print('munt         - M')
    for s in range(1,bo):
        smaak = input('Welke smaak wilt u voor bolletje ' + str(s) + ': (in hoofdletters) ' )
        if smaak == 'V' :
            vanille = vanille + 1
        elif smaak == 'C':
            chocolade = chocolade + 1
        elif smaak == 'A':
            aardbij = aardbij + 1
        elif smaak == 'M':
            munt = munt + 1
        else:
            slowprint('Sorry dat is geen optie' , 0.1)
            bo = bo - 1
            time.sleep(1)
            clear()
            return smaken(bo)
    slowprint('U krijgt ' + str(vanille) + ' bolletje(s) vanille' , 0.1)
    slowprint('U krijgt ' + str(chocolade) + ' bolletje(s) chocolade', 0.1)
    slowprint('U krijgt ' + str(aardbij) + ' bolletje(s) aardbij' , 0.1)
    slowprint('U krijgt ' + str(munt) + ' bolletje(s) munt' , 0.1)
    time.sleep(5)
    bo = bo - 1
    clear()
    toppings(bo,ba,ho)

def toppings(bo,ba,ho):
    slowprint('Wat voor topping wilt U?' , 0.1)
    slowprint('A) Geen', 0.1)
    slowprint('B) Slagroom', 0.1)
    slowprint('C) Sprinkels', 0.1)
    slowprint('D) Caramel Saus', 0.1)
    topping = input('Welke topping wilt U? ', 0.1)
    if topping == 'A':
        to = 0
        top = 1
    elif topping == 'B':
        to = 0.50
        top = 1
    elif topping == 'C':
        to = 0.30
        top = 1
    elif topping == 'D':
        if ba >= 1:
            to = 0.90
            top = 1
        elif ho >= 1:
            to = 0.60
            top = 1
    else:
        slowprint('Sorry dat is geen optie', 0.1)
    clear()
    bestellen(bo,ba,ho,to,top)

def bestellen(bo,ba,ho,to,top):
    global bol
    global bak
    global hoorn
    global topping
    global totalTopping
    
    bol = bol + bo
    bak = bak + ba
    hoorn = hoorn + ho
    topping = topping + to
    totalTopping = totalTopping + top

    slowprint('Wilt u nog meer bestellen? J/N' , 0.1)
    bestelling = input('')
    if bestelling == 'J':
        bolletjes()
    elif bestelling == 'N':
        time.sleep(1)
        clear()
        receipt(bol,bak,hoorn,topping,totalTopping)
    else:
        slowprint('Sorry dat is geen optie' , 0.1)
        time.sleep(1)
        bestellen()

def receipt(bo,ba,ho,to,top):
    boll = float(bo * 0.95)
    bakje = float(ba * 1.25)
    hoorntje = float(ho * 0.75)

    eind = float(boll + bakje + hoorntje + to)

    print('---------["Papi Gelato"]---------')
    if boll > 0:
        slowprint('bolletjes    ' + str(bo) + ' X €1.10    = €' + str(boll) , 0.1)
    if bakje > 0:
        slowprint('bakjes       ' + str(ba) + ' X €1.10    = €' + str(bakje) , 0.1)
    if hoorntje > 0:
        slowprint('hoorntjes    ' + str(ho) + ' X €1.10    = €' + str(hoorntje) , 0.1)
    if to > 0:
        slowprint('toppings     ' + str(top) + ' X €1.10    = €' + str(to) , 0.1)
    slowprint('                         ---------- +')
    slowprint('Totaal                    = €' + str(eind) , 0.1)

    time.sleep(5)
    slowprint('Bedankt en tot ziens!' , 0.1)
    time.sleep(1)
    clear()
    exit()

bol = 0
bak = 0
hoorn = 0
topping = 0
totalTopping = 0

slowprint('Wekom bij Papi Gelato' , 0.1)
time.sleep(2)
bolletjes()