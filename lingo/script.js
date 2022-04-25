var geraad = document.getElementById('Raad');
var goodcounter=0 
 var failcounter=0   
 var button = document.getElementById('knop');
var raadWord = words[Math.floor(Math.random() * words.length)];
//alert (raadWord)
var tijdelijk= raadWord
 
var opgeslagen = [...raadWord.split("")]
raadWord = [...raadWord.split("")]
var raad = 1;


geraad.innerHTML ="Raad een vijf letter woord.<br> De eerste letter is een "+(raadWord[0].toUpperCase())
function control() {
  
 
  failcounter +=1
 console.log(failcounter)
 if (failcounter==5){
  knop.disabled= true
  geraad.innerHTML ="Je hebt het woord niet geraden het woord was "+tijdelijk
    
   } 
    


var wordholder = document.createElement('ul')
wordholder.id = "raad " + raad
document.getElementById('wordlist').appendChild(wordholder)


for (i=0;i<5;i++){
var box = document.createElement('li');
box.id = i
document.getElementById("raad " + raad).appendChild(box)
}

    
var geraden = document.getElementById("geraden").value
geraden = geraden.split("")


for (i = 0; i < raadWord.length; i++) {
document.getElementById(i).innerHTML = geraden[i];
document.getElementById(i).style.backgroundColor = "white"


if (raadWord[i] == geraden[i]) {

goodcounter += 1
console.log(goodcounter)
document.getElementById(i).style.backgroundColor = "green"
raadWord[i] = ""
geraden[i] = ""
}
}
for (a = 0; a < raadWord.length; a++) {

for (b = 0; b < geraden.length; b++) {


if (raadWord[a] != "" && raadWord[a] == geraden[b]) {

document.getElementById(b).style.backgroundColor = "yellow"
document.getElementById(b).style.borderRadius = "50%"

raadWord[a] = ""
geraden[b] = ""
}
}
}


for (i=0;i<5;i++){
document.getElementById(i).id = ""
}
raadWord = [...opgeslagen]
raad++


    
if (goodcounter==5){
  geraad.innerHTML ="Je hebt het woord geraden het woord was "+tijdelijk
  knop.disabled= true
  }
  goodcounter=0

 

}

