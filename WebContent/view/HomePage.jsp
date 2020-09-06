<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/navbar.css">

<style>

	body{
	   font-family: "Dosis";
	src: url("../font/Dosis/AnyConv.com__Dosis-Regular.otf");
	}
</style>

<title>Agricol�rio - Home</title>
</head>
<body>
<%@ include file="navbar.jsp"%>
<%

boolean setTop= true;
if(loggato) {
setTop=true;


%>
<div class="container-fluid mt-5 ">
	<div class="row justify-content-center ">
	<div class="col-lg-12 text-center ">
			<p id="titoloHP" style="font-size: 34px;"> Benvenuto in</p>
		</div>
		<div id="" class="col col-lg-12 text-center ">
			<h1 id="titoloPagina" style="color: #00BB2D; font-size: 77px;" > AGRICOL<a id="titoloPagina"  style="color: #47cf00; font-size: 82px;">�</a>RIO,</h1>
		</div>
</div>

</div>


<!-- FUNZIONALITA -->
<div class="funzionalita"  >
		<div class="flexiamo" style="width: 100%;height: auto;">

		   <div  class="cazzarielli">
			<a href="showRegistro">
			<img

			srcset=" https://img.icons8.com/bubbles/100/000000/literature.png 1500w"/>
    		</a>
    		</div>
   			 <div class=" cazzarielli-testo1" id="cazzariello1" >


  		 <a href="showRegistro"> <h4 id="titoloParagrafo2"> ,REGISTRO DEI TRATTAMENTI FITOSANITARI</h4></a>
  		  <p id="sparisci">Compila qui il tuo registro fitosanitario dei trattamenti fitosanitari! <br>
			Tramite pochi pratici click potrai aggiungere un trattamento al tuo registro fitosanitario, apportare modifiche, visualizzare e stampare i registri degli anni precedenti.

    </p>
    </div>

		</div >

		<div class="flexiamo" style="width: 100%;height: auto;">

     			  <div  class="cazzarielli">
     			  <a href="showProdottiFitosanitari">
					<img srcset="https://img.icons8.com/bubbles/100/000000/search.png 1500w"/>
   				 </a>
   				 </div>
                <div  class=" cazzarielli-testo1" >

                 <a href="showProdottiFitosanitari">  <h4 id="titoloParagrafo2" > ,PRODOTTI FITOSANITARI</h4> </a>
                <p id="sparisci">Sfoglia qui l'elenco di tutti i prodotti fitosanitari esistenti, consulta tutte le informazioni importanti, le etichette e le avvertenze di ogni singolo prodotto fitosanitario! <br>
		Potrai visualizzare anche solo i tuoi prodotti fitosanitari presenti nel tuo magazzino e aggiungerne nuovi.
 			</p>
    		</div>

		</div>

		<div style="width: 100%;height: auto;">

		   <div  class="cazzarielli">
		     <a href="showScadenze">
   			 <img srcset="https://img.icons8.com/bubbles/100/000000/overtime.png 1500w"/>
    		</a>
    		</div>
    	<div  class=" cazzarielli-testo2" id="cazzariello2">


  			<a href="showScadenze">  <h4 id="titoloParagrafo2"> ,SCADENZE</h4> </a>
    <p id="sparisci">Visualizza qui tutte le scadenze dei trattamenti fitosanitari effettuati! <br>
Potrai tenere sotto controllo il termine dei trattamenti e stare al passo coi tempi.

    </p>
    </div>
		</div>

		<div style="width: 100%;height: auto;">

		  <div  class="cazzarielli">
		   <a href="showTracciabilita">
  			<img srcset="https://img.icons8.com/bubbles/100/000000/qr-code.png 1500w"/>
  			</a>
    </div>
    <div  class=" cazzarielli-testo2" class="destra">


    <a href="showTracciabilita"> <h4 id="titoloParagrafo2"> ,TRACCIABILIT�</h4> </a>
    <p id="sparisci" class="mt-2">Crea qui l'etichetta virtuale! <br>
Generando un semplice codice QR potrai visualizzare tutte le informazioni suoi tuoi prodotti.

    </p>
    </div>

		</div>
</div>
<%} %>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="image/fotoPH2.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="image/fotoPH1.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="image/fotoPH3.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 <br>
 <br>
<div class="container-fluid" id="presentazione">
<div class="row justify-content-center mt-5" >
<div class="uff">


<div class="text-center" id="rigaVantaggi">
<a href="showFunzionalita?funzionalita=comefunziona" style="text-decoration: none;">
<img src="https://img.icons8.com/bubbles/90/000000/services.png"/>
<h5 id="titoloParagrafo" id="listaCategiorie"> COME FUNZIONA</h5></a></div>

   <div  class="gruppodescr" >
    <p ><h1 style="color:black; font-size: 22px;" >Ogni sezione del sito svolge un'azione differente e ognuna molto importante per chi gestisce un'azienda agricola.
Vogliamo assicurarci di accompagnare l'utente passo dopo passo,
rendendo semplici tutte quelle azioni che prima sembravano impossibili effettuate tramite un semplice registro cartaceo. </h1>
<br>
<h1 style="color:black; font-size: 22px; font-style:italic" >Non temere: il sistema verr� sempre in tuo aiuto nel caso ti trovassi in difficolt�!</h1>
<br>
<h1 style="color:black; font-size: 24px; font-weight:bold" id="titoloParagrafo"> AGRICOL�RIO </h1> <h1 style="color:black; font-size: 22px;" > � al fianco di ogni titolare di azienda e delegato che almeno una volta nella vita si � trovato in difficolt� con la compilazione e la gestione del registro fitosanitario. </h1>
  <br>
  <br>
    </div>
    </div>
     <br>
     </div>
     </div>


 <div class="container-fluid" id="presentazione">
<div class="row justify-content-center mt-5" >
<div class="uff" >

<div class="text-center" id="rigaVantaggi">
<a href="showFunzionalita?funzionalita=vantaggi" style="text-decoration: none;">
<img src="https://img.icons8.com/bubbles/90/000000/checked.png"/>
<h5 id="titoloParagrafo" id="listaCategiorie"> VANTAGGI</h5></a></div>


   <div  class="gruppodescr" >
   <p ><h1 style="color:black; font-size: 22px;" > Agricol�rio rende il tuo lavoro di immagazzinamento dei trattamenti
pi� efficiente di un qualsiasi strumento di registrazione alternativo. Scopri i vantaggi: </h1>
<div class="text-center" id="rigaVantaggi"><img src="https://img.icons8.com/bubbles/70/000000/laptop-flower.png"/> <h5   id="listaVantaggi">TUTTO ONLINE</h5></div>
<div class="text-center" id="rigaVantaggi"><img src="https://img.icons8.com/bubbles/70/000000/ok-hand.png"/><h5   id="listaVantaggi">MAI PI� TRATTAMENTI SBAGLIATI</h5></div>
<div class="text-center" id="rigaVantaggi"><img src="https://img.icons8.com/bubbles/70/000000/refresh.png"/><h5    id="listaVantaggi">AGGIORAMENTI COSTANTI</h5></div>
<div class="text-center" id="rigaVantaggi"><img src="https://img.icons8.com/bubbles/70/000000/agreement.png"/><h5    id="listaVantaggi">A PASSO DI LEGGE</h5></div>
<div class="text-center" id="rigaVantaggi"><img src="https://img.icons8.com/bubbles/70/000000/report-card.png"/><h5   id="listaVantaggi">CARTA DI IDENTIT� DEL PRODOTTO</h5></div>
<div class="text-center" id="rigaVantaggi"><img src="https://img.icons8.com/bubbles/70/000000/broccoli.png"/><h5    id="listaVantaggi">FACILE � BELLO</h5></div>
<br>

    </div>
     <br>
     </div>
     </div>
   </div>







  <div class="container-fluid" id="presentazione">
<div class="row justify-content-center mt-5" >
<div class="uff" class="text-center">

  <div class="text-center" id="rigaVantaggi">
  <a href="showFunzionalita?funzionalita=chisiamo" style="text-decoration: none;">
   <img src="https://img.icons8.com/bubbles/90/000000/group.png"/>
   <h5 id="titoloParagrafo" id="listaCategiorie"> CHI SIAMO</h5></a></div>



<div class="container-fluid py-4">
  <div class="row row-cols-1 row-cols-md-3">
   <div class="col mb-4">
    <div class="card shadow h-100">
    <img class="card-img-top rounded-circle img-fluid" src="image/ciro.png" alt="Card image" style="width:100%">
      <div class="card-body text-center">
      	<h4 class="titoloParagrafo">Ciro Falciano</h4>
        <p class="corpoParagrafo">Programmatore & UX designer.</p>
      </div>
    </div>
    </div>
    <div class="col mb-4">
    <div class="card shadow h-100">
    <img class="card-img-top rounded-circle img-fluid" src="image/giulio.png" alt="Card image" style="width:100%">
      <div class="card-body text-center">
       	<h4 class="titoloParagrafo">Giulio Cocina</h4>
       	<p class="corpoParagrafo">Programmatore & UI designer.</p>
      </div>
    </div>
    </div>
  </div>
</div>

</div>
<br>
</div>
</div>





<%@ include file="footer.jsp"%>


</body>
</html>
