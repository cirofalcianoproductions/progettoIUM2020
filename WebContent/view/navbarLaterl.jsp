<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>

body{
	   font-family: "Dosis";
	src: url("../font/Dosis/AnyConv.com__Dosis-Regular.otf");
	}





.dropdown-menu-animation .prova{

	animation:slideInUp;
	animation-duration:1s!important;


}

.icon-bar {
  width: 100px;
  background-color: #23a9d8;
  z-index:1;
  animation: fadeInLeft;
  animation-duration: 1s;
  float: left;
  position:fixed;
  margin-top: 10%;
  border-radius: 0px;
 border: 1px solid white;
  }



.icon-bar a {
	width:100px;
  display: block;
  text-align: center;
 /* padding: 16px;*/
  transition: all 0.3s ease;
  color: white;
  font-size: 40px;
   border-radius: 0px;
border: 1px solid white;
}

.icon-bar a:hover {
  background-color: white;
  color: #23a9d8 ;
}
.icon-bar a:not(.nohover):hover {
    background-color: #23a9d8;
    cursor:pointer;
}

.icon-bar-text{
	visibility: hidden;
	text-align: center;
	  position: absolute;
	background-color: #23a9d8;
	color:white;
	font-size: 20px;

}

/* Box di testo delle icone della barra aperta */
.icon-bar a:hover > .icon-bar-text{
     visibility: visible;
	text-align: center;
	  position: absolute;
	background-color: #23a9d8;
	width: 180px;
	height: 70px;
	margin-left:20px;
	animation: fadeIn;
	animation-duration: 1s;
	align-content: center;

}


/* Box di testo dell'icona del menu rimpicciolita */
.w3-teal a:hover > .icon-bar-text {
	visibility: visible;
	text-align: center;
	position: absolute;
	background-color: #23a9d8;
	width: 100px;
	height: 50px;
	margin-left: 80px;
	animation: fadeIn;
	animation-duration: 1s;
	align-content: center;
}

.apri{

}

.w3-sidebar {
	height: 100%;
	width: 100px;
	background-color: transparent;
	position: fixed !important;
	z-index: 1;
	overflow: auto;
    border: none;

}



.w3-bar-block .w3-bar-item {
	color: black;
	background-color: white;
	display: block;
	padding: 8px 16px;
	text-align: left;
	border: 1px solid gainsboro;
	white-space: normal;
	float: inline-end;
	outline: 0;
	position: relative;
	margin-top: 5px;
	/* width: ; */
}
.w3-teal {
	display: flex;
	color: white !important;
	background-color: #23a9d8 !important;
	width: 70px;
}

#prova{
animation: fadeInLeft;
  animation-duration: 1s;
 position:fixed;
 transition: all 0.3s ease;
 display: block;
 font-size: 18px;
}

/* icona frecce per men� a scomparsa */
.arrow-style {
  color: white;
  margin-left:-24px;
}
@keyframes load {
  0% {
    opacity: 0;
  }
  20% {
  	opacity:1;
  }100% {
    opacity: 1;
  }
}

.uno {
  -webkit-animation: load 5s 4 0.5s;
  animation: load 5s 4 0.5s;
}
.due {
  -webkit-animation: load 5s 4 0.6s;
  animation: load 5s 4 0.6s;
}
.tre {
  -webkit-animation: load 5s 4 0.7s;
  animation: load 5s 4 0.7s;
}
</style>
<title>Agricol�rio- Barra Laterale</title>
</head>
<body>

<!--
<div class="icon-bar shadow">
  <a href="showRegistro"><img src=" https://img.icons8.com/bubbles/80/000000/literature.png"/><span class="icon-bar-text shadow">Registro dei Trattamenti Fitosanitari</span></a>
  <a href="showProdottiFitosanitari"><img srcset="https://img.icons8.com/bubbles/80/000000/search.png"/><span class="icon-bar-text shadow">Prodotti Fitosanitari</span></a>
  <a href="showScadenze"> <img srcset="https://img.icons8.com/bubbles/80/000000/overtime.png "/><span class="icon-bar-text shadow">Scadenze dei Trattamenti Fitosanitari</span></a>
  <a href="showTracciabilita"><img srcset="https://img.icons8.com/bubbles/80/000000/qr-code.png "/><span class="icon-bar-text shadow">Tracciabilit�</span></a>
</div>
 -->

 <div class=" w3-sidebar w3-bar-block " style="display:block" id="mySidebar">

 <div class="icon-bar shadow">
  <a onclick="w3_close()" style="font-size: 18px"> <img class="tre" srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAABmJLR0QA/wD/AP+gvaeTAAAAaklEQVRIie3UsQmAQAxG4UOstdWRdAad9yztXObgWYlHGkW5aPG/BT4SQkJQSv0hoAXGL9AIJGD2RBfOVqD2QGOGbkAnVKitumO/RR4HNO6rvsB74aVxe+nlX2aGH5MnYHJBDT64okop2w4gjRheP8Dm7QAAAABJRU5ErkJggg=="/>
    <img class="due arrow-style" srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAABmJLR0QA/wD/AP+gvaeTAAAAaklEQVRIie3UsQmAQAxG4UOstdWRdAad9yztXObgWYlHGkW5aPG/BT4SQkJQSv0hoAXGL9AIJGD2RBfOVqD2QGOGbkAnVKitumO/RR4HNO6rvsB74aVxe+nlX2aGH5MnYHJBDT64okop2w4gjRheP8Dm7QAAAABJRU5ErkJggg=="/>
    <img class="uno arrow-style" srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAABmJLR0QA/wD/AP+gvaeTAAAAaklEQVRIie3UsQmAQAxG4UOstdWRdAad9yztXObgWYlHGkW5aPG/BT4SQkJQSv0hoAXGL9AIJGD2RBfOVqD2QGOGbkAnVKitumO/RR4HNO6rvsB74aVxe+nlX2aGH5MnYHJBDT64okop2w4gjRheP8Dm7QAAAABJRU5ErkJggg=="/> <span class="icon-bar-text shadow" style="margin-left:35px;"> Chiudi il Men�</span></a>
  <a class="nohover" href="showRegistro"><img srcset=" https://img.icons8.com/bubbles/80/000000/literature.png"/><span class="icon-bar-text shadow">Registro dei Trattamenti Fitosanitari</span></a>
  <a class="nohover" href="showProdottiFitosanitari"><img srcset="https://img.icons8.com/bubbles/80/000000/search.png"/><span class="icon-bar-text shadow">Prodotti Fitosanitari</span></a>
  <a class="nohover" href="showScadenze"> <img srcset="https://img.icons8.com/bubbles/80/000000/overtime.png "/><span class="icon-bar-text shadow">Scadenze dei Trattamenti Fitosanitari</span></a>
  <a class="nohover" href="showTracciabilita"><img srcset="https://img.icons8.com/bubbles/80/000000/qr-code.png "/><span class="icon-bar-text shadow">Tracciabilit�</span></a>
</div>
</div>

<div class="w3-teal">
  <a><button class="apri w3-teal" style="display:none;"  id=prova onclick="w3_open()">
  <img class="uno" srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAABmJLR0QA/wD/AP+gvaeTAAAAaUlEQVRIie3Vuw2AMBAEUZtWXAK9QF8gEopEUMEQOMABggT2kn0NjO7kT0pmFgHIwAhkdXSmWoFOFS7AzmWRTQ70wNbEpZPfxUMnd/yR5mB8KWTVjv4dLcAhfzKpn8Qkv7NNfJBGzezNCeLiIwNs96qWAAAAAElFTkSuQmCC"/>
    <img class="due arrow-style" srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAABmJLR0QA/wD/AP+gvaeTAAAAaUlEQVRIie3Vuw2AMBAEUZtWXAK9QF8gEopEUMEQOMABggT2kn0NjO7kT0pmFgHIwAhkdXSmWoFOFS7AzmWRTQ70wNbEpZPfxUMnd/yR5mB8KWTVjv4dLcAhfzKpn8Qkv7NNfJBGzezNCeLiIwNs96qWAAAAAElFTkSuQmCC"/>
    <img class="tre arrow-style" srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAABmJLR0QA/wD/AP+gvaeTAAAAaUlEQVRIie3Vuw2AMBAEUZtWXAK9QF8gEopEUMEQOMABggT2kn0NjO7kT0pmFgHIwAhkdXSmWoFOFS7AzmWRTQ70wNbEpZPfxUMnd/yR5mB8KWTVjv4dLcAhfzKpn8Qkv7NNfJBGzezNCeLiIwNs96qWAAAAAElFTkSuQmCC"/>
     </button> <span class="icon-bar-text shadow"> Apri il Men�</span></a>
</div>

<script>
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
document.getElementById("prova").style.display = "none";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("prova").style.display = "block";
}
</script>

</body>
</html>
