var button1 = document.getElementById('button1');
var button2 = document.getElementById('button2');
var button3 = document.getElementById('button3');
var description = document.getElementById('description')
var title = document.getElementById('title')
var gamecontainer = document.getElementById('game-container')

var inventory = {
    "geld" : 0,
    "wapen" : false
};

begin();

function begin(){
    title.innerHTML = "Welkom bij de game 2.0" ;
    description.innerHTML = "Gemaakt door Damian Verburg";
    button1.innerHTML= "begin";
    button2.innerHTML= "keuze 2";
    button3.innerHTML= "keuze 3";
    button2.disabled= true;
    button3.disabled= true;
    console.log('begin');
    button1.onclick = function() {strand()};
}


function strand(){
    title.innerHTML = "Strand";
    description.innerHTML = "Je staat op het strand. Je kunt het strandpad volgen of de zee in gaan ";
    button1.disabled = true;
    button3.disabled = false;
    button2.disabled = false;
    button2.innerHTML = "ga de zee in";
    button3.innerHTML = "strandpad";
    button2.onclick = function() {springhaai()};
    button3.onclick = function() {strandpad()};
    gamecontainer.style.backgroundImage = "url('img/strand.jpg')";
}

function springhaai(){
    death();
}

function strandpad(){
    title.innerHTML = "Strandpad";
    description.innerHTML = "Je ziet dat je 3 kanten op kan gaan. Welke durf jij aan?";
    button1.disabled = false;
    button2.disabled = false;
    button3.disabled = false;
    button1.innerHTML = "stad";
    button2.innerHTML = "monument";
    button3.innerHTML = "bos";
    button1.onclick = function() {stad()};
    button2.onclick = function() {monument()};
    button3.onclick = function() {bos()};
    gamecontainer.style.backgroundImage = "url('img/strandpad.jpg')";
}

function monument(){
    gamecontainer.style.backgroundImage = "url('img/monument.jpg')";
    title.innerHTML = "Monument";
    if(inventory["geld"] >= 7000){
    description.innerHTML = "Je heeft het spel uitgespeeld. Goed gedaan!!!! (ps : sorry voor de earrape) ";
    button1.disabled = false;
    button2.disabled = true;
    button3.disabled = true;
    var audio = new Audio("einde.mp3");
    button1.onclick = function() {begin()}
    button1.innerHTML = "begin het spel opnieuw";
audio.play();
    } else {
        alert("Je hebt niet genoeg voor het einde");
        button1.onclick = function() {strandpad()};
        button1.innerHTML =  "terug naar het strandpad";
        button2.disabled = true;
        button3.disabled = true;
    }
}

function death(){
    alert("je bent dood.... jammer");
    begin();
    alert("u begint het spel opnieuw");
    window.location.reload();
}

function stad(){
    gamecontainer.style.backgroundImage = "url('img/stad.jpg')";
    title.innerHTML = "Stad";
    description.innerHTML = "Je bent aangekomen bij een grote leuke stad. Wat ga je doen?";
    button1.innerHTML = "riool";
    button2.innerHTML = "bar";
    button3.innerHTML = "bank";
    button2.disabled = false;
    button3.disabled = false;
    button1.onclick = function() {riool()};
    button2.onclick = function() {bar()};
    button3.onclick = function() {bank()};
}

function bos(){
    gamecontainer.style.backgroundImage = "url('img/bos.jpg')";
    title.innerHTML = "Bos";
    description.innerHTML = "Je bent aangekomen in het bos";
    button2.disabled = false;
    button3.disabled= true;
    button2.innerHTML = "bospad";
    button1.innerHTML = "cabin";
    button2.onclick = function() {bospad()};
    button1.onclick = function() {cabin()};
}

function bospad(){
    gamecontainer.style.backgroundImage = "url('img/bospad.jpg')";
    title.innerHTML = "Bospad";
    description.innerHTML = "Je ziet een grot";
    button2.disabled = true;
    button1.innerHTML = "grot";
    button1.onclick = function() {grot()};
}

function grot(){
    gamecontainer.style.backgroundImage = "url('img/grot.jpg')";
    button1.innerHTML = "ga de grot in";
    button1.onclick = function() {beer()};
    button2.onclick = function() {bos()};
    button2.innerHTML = "terug gaan";
    button2.disabled = false;
}

function beer(){
    gamecontainer.style.backgroundImage = "url('img/beer.jpg')";
    title.innerHTML = "Beergrot";
    description.innerHTML = "Je ziet een beer!!! Wat ga je doen?? ";
    button3.disabled= false;
    button2.disabled = false;
    button1.innerHTML = "kill de beer";
    button2.innerHTML = "gebruik je bear grylls skills";
    button3.innerHTML = "ren weg";
    button1.onclick = function() {killbeer()};
    button2.onclick = function() {skills()};
    button3.onclick = function() {run()};
}

function killbeer(){
    death();
}

function skills(){
    alert("je hebt 30% kans op overleven")
    RNGFight = Math.random() * 100;
if (RNGFight < 30){
    alert("je hebt het gevecht gewonnen")
    button1.innerHTML = "terug naar het strandpad";
    button1.onclick = function() {strandpad()};
}else{
    death();
}
}

function run(){
    death();
}

function cabin(){
    gamecontainer.style.backgroundImage = "url('img/cabin.jpg')";
    title.innerHTML = "Cabin";
    description.innerHTML = "Je komt bij een hutje aan in het bos. Wat doe je?";
    button1.disabled = false;
    button2.disabled = false;
    button3.disabled = true;
    button1.innerHTML = "vecht de heks";
    button2.innerHTML = "ga voorbij de hut";
    button1.onclick = function() {heks()};
    button2.onclick = function() {nocabin()};
}

function heks(){
    alert("je hebt 30% kans op overleven")
    witchFight = Math.random() * 100;
if (witchFight < 30){
    alert("je hebt het gevecht gewonnen. je krijgt 100 stroopwafels")
    inventory["geld"] += 100;
    button1.innerHTML="terug naar het bos";
    button3.onclick = function() {bos()};
    
}else{
    death();
}
}


function nocabin(){
    gamecontainer.style.backgroundImage = "url('img/bospad.jpg')";
    title.innerHTML = "Looproute";
    description.innerHTML = "Je loopt voorbij het hutje en ziet een dorp";
    button3.innerHTML= "dorp";
    button2.disabled = true;
    button1.disabled = true;
    button3.disabled = false;
    button3.onclick = function() {dorp()};
}

function dorp(){
    gamecontainer.style.backgroundImage = "url('img/dorp.jpg')";
    title.innerHTML = "Dorp";
    description.innerHTML = "In het dorp kan je veel dingen doen. Wat ga jij doen??";
    button1.innerHTML= "ga naar een herberg";
    button2.innerHTML= "loop door het dorp heen";
    button3.innerHTML= "je kijkt bij de wensput";
    button1.disabled = false;
    button2.disabled = false;
    button3.disabled = false;
    button1.onclick = function() {herberg()};
    button2.onclick = function() {niks()};
    button3.onclick = function() {wensput()};
}

function herberg(){
    gamecontainer.style.backgroundImage = "url('img/herberg.jpg')";
    title.innerHTML = "Herberg";
    alert("Je komt erachter dat je bij een demonische groepering bent beland. Je wordt geofferd aan de heilige stroopwafel");
    death();
}



function wensput(){
    gamecontainer.style.backgroundImage = "url('img/Wensput.jpg')";
    title.innerHTML = "Wensput";
    wens = Math.random() * 100;
    if (wens < 50){
        wensmoney();
    }else{
        vallen();
    }
}

function vallen(){
    alert("Helaas ben je in de wensput gevallen. Je hebt je nek gebroken en daardoor ben je......");
    death();
}

function wensmoney(){
    alert("Er staat opeens een stapel geld voor je.... ");
    alert(" Nadat je de stroopwafels heb opgepakt kan je terug teleporteren naar het strand.  Je kan ook ervoor kiezen om verder te lopen");
    inventory["geld"] += 100;
    console.log(inventory);
    button1.onclick = function() {niks()};
    button1.innerHTML = "ga verder";
    button2.disabled = true;
    button3.disabled = true;
}

function niks(){
    button2.disabled = true;
    button3.disabled = true;
    button1.innerHTML = "ga naar de stad";
    button1.onclick = function() {stad()};
}

function riool(){
    gamecontainer.style.backgroundImage = "url('img/riool.jpg')";
    aligator();
}

function aligator(){
    gamecontainer.style.backgroundImage = "url('img/alligator.jpg')";
    title.innerHTML = "Riool";
    description.innerHTML = "Je komt in het riool aan en ziet een alligator die klaar is om te vechten. Wat doe je? ";
    button1.onclick = function() {alligatorrun()}
    button1.innerHTML = "vecht de alligator";
    button2.disabled = true;
    button3.disabled = true;
}

function alligatorrun(){
    alert("Je hebt 50% kans op overleven")
    wens = Math.random() * 100;
    if (wens < 50){
        alert("Je hebt het gevecht gewonnen. Je ziet een zakje met geld liggen naast het lichaam van de alligator")
        inventory["geld"] += 100;
        tunnel();
    }else{
        death();
    }
}

function tunnel(){
    gamecontainer.style.backgroundImage = "url('img/tunnel.jpg')";
    title.innerHTML = "Tunnel";
    description.innerHTML = "Nadat je de alligator hebt verslagen kan je 2 kanten op. Welke neem jij? ";
    button2.onclick = function() {tunnelterug()};
    button3.onclick = function() {tunnelverder()};
    button1.disabled = true;
    button2.disabled = false;
    button3.disabled = false;
    button2.innerHTML = "neem de tunnel terug naar de stad";
    button3.innerHTML = "neem de tunnel verder";
}

function tunnelverder(){
    gamecontainer.style.backgroundImage = "url('img/tunnel.jpg')";
    description.innerHTML = "Je ziet een gunsmith. Ga je naar de gunsmith of toch terug naar de stad? ";
    button1.innerHTML = "ga naar de gunsmith";
    button2.innerHTML = "neem de tunnel terug naar de stad";
    button2.onclick = function() {tunnelterug()};
    button1.onclick = function() {gunsmith()};
    button3.disabled = true;
    button1.disabled = false;
}

function gunsmith(){
    gamecontainer.style.backgroundImage = "url('img/gunsmith.jpg')";
    title.innerHTML = "GunSmith";
    description.innerHTML = "Je komt aan bij de gunsmith en hij heeft wapens in de aankoop. Je kan kiezen tussen het kip geweer en het ei kanon";
    button3.disabled = true;
    button1.innerHTML = "koop het kipgeweer";
    button2.innerHTML = "koop het ei kanon";
    button1.onclick = function() {wapenoppak()};
    button2.onclick = function() {wapenoppak()};
}

function wapenoppak(){
    alert("Je hebt een wapen gekocht");
    inventory["wapen"] = true;;
    inventory["geld"] - 100;
    button1.onclick = function(){stad()};
    button1.innerHTML = "terug naar stad";
    button2.disabled = true;
    button3.disabled = true;
}


function tunnelterug(){
    gamecontainer.style.backgroundImage = "url('img/tunnel.jpg')";
    title.innerHTML = "Tunnel";
    button1.innerHTML ="stad";
    button1.onclick = function() {stad()};
}



function bar(){
    gamecontainer.style.backgroundImage = "url('img/cafe.jpg')";
    title.innerHTML = "Bar";
    description.innerHTML = "Je komt aan bij de bar. Wat wil je doen? ";
    button3.disabled = true;
    button2.disabled = false;
    button1.disabled = false;
    button1.innerHTML = "speel poker";
    button2.innerHTML = "haal een drankje";
    button1.onclick = function() {poker()};
    button2.onclick = function() {drankje()};
}

function poker(){
    gamecontainer.style.backgroundImage = "url('img/pokertafel.jpg')";
    title.innerHTML = "Pokertafel";
    description.innerHTML = "Je kan eerlijk spelen en all-in gaan of ga je het risico nemen om vals te spelen? ";
    button1.innerHTML = "speel vals";
    button2.innerHTML = "all-in gaan";
    button1.onclick = function() {valsspelen()};
    button2.onclick = function() {allin()};

}

function valsspelen(){
    alert("Je wordt gezien met valsspelen en er ontstaat een bargevecht");
    death();
}



function allin(){
    var allin = Math.floor((Math.random() * 3)) ;
    if (allin = 1){
        alert("je hebt gewonnen");
        inventory["geld"] += 5000000;
    } else if(allin = 2){
        alert("je hebt gewonnen");
        inventory["geld"] += 7000;
    } else{
    alert("je hebt niet gewonnen, je gaat dood aan verdriet");
    death();
    }
}



function drankje(){
    gamecontainer.style.backgroundImage = "url('img/bar.jpg')";
    title.innerHTML = "Bartap";
    description.innerHTML = "Je komt aan bij de bartap. Hoeveel ga jij drinken?";
    button1.innerHTML = "veel drinken";
    button2.innerHTML = "weinig drinken";
    button3.innerHTML = "terug naar de stad";
    button1.onclick = function(){veeldrinken()};
    button2.onclick = function(){weinigdrinken()};
    button3.onclick = function(){stad()};
}

function veeldrinken(){
    alert("u moet 200 munten betalen")
    if(inventory["geld"] >= 200){
        alert("je wordt opeens wakker op het strand");
        strand();
    } else {
        alert("je hebt niet genoeg geld");
    }
    button2.disabled = true;
    button1.innerHTML = "toch weinig drinken";
    button1.onclick = function(){weinigdrinken()};
}

function weinigdrinken(){
    alert("u moet 100 munten betalen")
    if(inventory["geld"] >= 100){
        alert("je wordt opeens wakker op het strand");
        strand();
    } else {
        alert("je hebt niet genoeg geld");
    }
    button2.disabled = false;
    button1.innerHTML = "toch veel drinken";
    button2.innerHTML = "terug gaan naar de stad";
    button1.onclick = function(){veeldrinken()};
    button2.onclick = function(){stad()};
}


function bank(){
    gamecontainer.style.backgroundImage = "url('img/bank.jpg')";
    title.innerHTML = "Bank";
    description.innerHTML = "Je ziet een bank. wat ga je doen?";
    button1.innerHTML = "ga de bank overvallen";
    button2.innerHTML = "ga de bank rustig binnen";
    button3.innerHTML = "geld vragen op straat";
    button1.onclick = function(){bankovervallen()};
    button2.onclick = function(){bankbinnengaan()};
    button3.onclick = function(){geldvragen()};
}

function bankovervallen(){
    gamecontainer.style.backgroundImage = "url('img/bankovervallen.jpg')";
    alert("je gaat de bank binnen");
    console.log(inventory["wapen"]);
    if(inventory["wapen"] == true){
        alert("je hebt de bewakers vermoordt en kan het geld pakken");
        inventory["geld"] += 7000;
        button1.innerHTML = "terug naar het strand";
        button1.onclick = function(){strand()};
        button1.disabled = false;
        button2.disabled = true;
        button3.disabled = true;
    } else{
        alert("je had geen wapen en je bent gedood door de bewakers");
        death();
    }
}

function bankbinnengaan(){
    alert("Je loopt de bank binnen en vraagt of je geld mag lenen. De bankassistente vindt je een beetje verdacht en gooit je de bank uit.");
    alert("je kunt ook helemaal terug lopen naar het strand");
    button1.innerHTML = "terug naar het strand";
    button2.innerHTML = "terug de bank in";
    button1.onclick = function(){strand()};
    button2.onclick = function(){bank()};
}

function terugbinnen(){
    alert("je bent teruggekomen en omdat je een waarschuwing hebt gekregen wordt je in de gevangenis gezet voor leven.");
    alert("je sterft uiteindelijk aan de honger");
    death();
}

function geldvragen(){
    alert("je vraagt geld op straat")
    wens = Math.random() * 100;
    if (wens < 50){
        alert("je krijgt van een oud vrouwtje wat munten.");
        inventory["geld"] += 100;
    }else{
        alert("je krijgt van niemand munten en je wordt overvallen door wat dieven.");
        death();
    }
}
