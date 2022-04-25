import pyttsx3
import datetime

engine = pyttsx3.init('sapi5')
voices = engine.getProperty('voices')
#print(voices[1].id)
engine.setProperty('voice', voices[0].id)


def speak(audio):
    engine.say(audio)
    engine.runAndWait()


def wishMe():
    # checks the devices' time and uses it to make the right responds
    hour = int(datetime.datetime.now().hour)
    if hour>=0 and hour<12:
        speak("goodmorning sir")
    
    elif hour>=12 and hour<18:
        speak("goodafternoon sir")

    else:
        speak("goodevening sir")
    
    speak("how may i help you")


def takeCommand():
    r = sr.Recognizer()
    with sr.Microphone() as source:
        print("listening....")
        r.pause_thershold = 1
        audio = r.listen(source)
    try:
        print("Recognizing...")
        query = r.recognize_google(audio, language ='en-nl')
        print(f"User said: {query}\n")
    except Exception as e:
        print("say that again please.....")
        return none

if __name__ == "__main__":
    wishMe()