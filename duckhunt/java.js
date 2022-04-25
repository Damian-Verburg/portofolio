var directions = ["N","NE", "E", "SE", "S", "SW", "W", "NW"]
var posLeft = 750;
var posTop = 370;
var hitcount3 = 20;
var timerclock= 500;
var hitcount = 0;
var hitcount2 = 0;
var duck= document.getElementById("duck")
var container= document.getElementById("container")

wacht()

function moveDuck(){
	
var number = Math.floor((Math.random() * 7)) ;
vdirections = directions[number];
console.log(posLeft)



	if(posLeft >= 1500 ||posLeft <= 0){
		reset()
		hitcount2++; 
			counter2.innerHTML =+  hitcount2
			shots()

	}

	if(posTop <= 150 ||	posTop >= 600){
		reset()
		hitcount2++; 
			counter2.innerHTML =+   hitcount2
			shots()

	}


	if(vdirections == "E"){
		posLeft = posLeft + 50;
		duck.style.left = posLeft + "px";
	}

	else if(vdirections == "N"){
		posTop = posTop - 50;
		duck.style.top = posTop + "px";
	}
	
	else if(vdirections == "NE"){
		posTop = posTop - 50;
		posLeft = posLeft + 50;
		duck.style.top = posTop + "px";
		duck.style.left = posLeft + "px";

	}
	else if(vdirections == "SE"){
	posLeft = posLeft + 50;
	duck.style.left = posLeft + "px";	
	posTop = posTop + 50;
		duck.style.top = posTop + "px";
	}
	else if(vdirections == "SW"){
	posLeft = posLeft - 50;
		duck.style.left = posLeft + "px";
	posTop = posTop + 50;
		duck.style.top = posTop + "px";
	}

	else if(vdirections == "NW"){
	posTop = posTop - 50;
		duck.style.top = posTop + "px";
	posLeft = posLeft - 50;
		duck.style.left = posLeft + "px";
	}
	else if(vdirections == "W"){
		posLeft = posLeft - 50;
		duck.style.left = posLeft + "px";
	}	
	

	else{ //s
		posTop = posTop + 50;
		duck.style.top = posTop + "px";
	}

	if(hitcount3 == 0){
		
		ending()
		
		 
	}
	

}

function wacht(){
setInterval(function(){
  moveDuck()
}, timerclock); 
}

	function reset(){
		console.dir(duck);
		posLeft = 750
		posTop = 370
		duck.style.top = 370 + "px"
		duck.style.left = 750 + "px"
		}

		duck.addEventListener("click", function(){
			reset()
			hitcount++; 
			counter1.innerHTML =+  hitcount
			hitcount2--;
			shots()
						hitcount3++; 


		})


		container.addEventListener("click", function(){

			hitcount2++; 
			counter2.innerHTML =+  hitcount2
			shots()

			
		})


function shots(){

			hitcount3--;
						counter3.innerHTML =+  hitcount3


}
  function ending(){
  	alert("het spel is afgelopen, als u het opnieuw wilt spelen moet u de pagina verversen.")
		timerclock==60000
		duck.style.height=0
		duck.style.width=0

  }