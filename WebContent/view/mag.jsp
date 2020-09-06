<%@page import="com.agricolario.bean.ProdottoMagazzino"%>
<%@page import="com.agricolario.bean.ProdottoFitosanitario"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="bootstrap.min.js"></script>

<script type="text/javascript" src="js/jquery.js">






</script>
<script type="text/javascript" src="js/jquery.min.js">



</script>
<script type="text/javascript">
$( document ).ready(function() {
$('#srch').on('input', function(){
	  var page = $(this).val();
	  window.location.href = "#"+page;
	});
});
</script>
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/yourcode.js"></script>

<script src="https://kit.fontawesome.com/yourcode.js"></script>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<style type="text/css">
	body{
	   font-family: "Dosis";
	src: url("../font/Dosis/AnyConv.com__Dosis-Regular.otf");
	}
#livesearch{
 z-index: 1;
  position: absolute;
 display: none;
 height: auto;
 max-height:250px;
 width:50%;
 max-width:240px;
 overflow-x:auto;
     margin-top: 35px;
    margin-left: 60px;
 background-color: white;
}
.contenitore-delega {
	width: 100%;
	height: auto;
	z-index: 1;
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	justify-content: center;
	align-items: center;
	padding-top: 20%;
}

.close-delegato{
    width:15px;
    color: black;
	font-size: 20px;
	font-weight: bold;
	position:relative;
	float: right;
	margin-right: 10px;
}


.fa-close:hover{
	color: red;
	cursor: pointer;
}
.bottoni-pop-up {
	height: 20%;
	width: 100%;
	display: grid;
	grid-template-columns: 100px 100px;
	justify-content: center;
	grid-Column-gap: 5%;
	margin-top: 30px;
}

.colore-bottoni{

 /* background: #1161ee;
  border-radius: 25px;
  color: white;
  border:none;
  text-transform: uppercase; */

	background: #1161ee;
	border-radius: 25px;
	color: white;
	border: none;
	text-transform: uppercase;
	height: 100%;
	width: 100%;
	background-color: #23a9d8;
	color: white;
	font-weight: ;
	border: none;
	text-align: center;
	border-radius: 5px;
	font-size: 20px;
}


#confermaBottone:hover{

background-color: green;

}

#annullaBottone:hover{

background-color: red;

}



#delega-pop-up{
	display: none;
}

#blocco-delega {
	width: 400px;
	height: 150px;
	background-color: white;
	/* display: grid; */
	grid-template-rows: 25px 50px 50px 50px;
	border-radius: 10px;
	border: 1px solid gainsboro;
}


#titolo-pop-up {
	font-size: 28px;
	font-weight: bold;
	margin: auto;
	width: 65%;
}
#pop-text {
	font-size: 18px;
	/* margin: auto; */
	/* width: 80%; */
	margin-left: 50px;
}


</style>
<title>Agricol�rio - Magazzino </title>

</head>
<body>
  <%@ include file="navbar.jsp"%>

<%@ include file="navbarLaterl.jsp"%>
<!--  -->



<div class="titles">
<div  class="titoloPaginaReg ">
  <p id="titoloPaginaReg" class="text-center"> ,Magazzino</p>
</div>
<div class="sottoTitoloReg" class="text-center">
  <p  id="sottoTitoloReg" class="text-center" class="w3-large">Elenco dei prodotti da te posseduti, classificati per nome, descrizione e quantit� rimasta. </p>
</div>
<div  class="iconHelp ">
   	<div class="pnd-pulse">
    <span class="pnd-pulse-dot">?</span>
    <span class="pnd-pulse-ring"></span>
    <div class=" description">
         <p class="pnd-pulse-text">
         In questa pagina puoi visualizzare le tue giacenze in magazzino, Per ogni prodotto fitosanitario presente � indicata la quantit� rimasta ed un collegamento alla rispettiva etichetta cartacea. <br>
         Puoi consultare la <a href="image/pericoli.pdf"> Lista dei pericoli </a> delle sostanze chimiche.
         <br>
         </p>

         <p class="pnd-pulse-text">
         Per altre informazioni pi� dettagliate consultare la pagina <a href="http://localhost/IUM/showFunzionalita?funzionalita=comefunziona"> Come Funziona </a> oppure contattare l'assistenza <a href="http://localhost/IUM/showFunzionalita?funzionalita=assistenza">qui </a>.   </p>
    </div>
    </div>
</div>
</div>

<!--  Barra di Ricerca-->

<div class="wrap">
   <div class="barraRicerca">
   <button type="submit" class="searchButton">
        <i class="fa fa-search"></i>
     </button>
      <input type="text" class="testoRicerca" class="searchTerm" placeholder="Digita il nome di un prodotto fitosanitario..." list="lista" id="srch">
      <div id="live-search">prova</div>
   </div>
</div>


<!-- Label -->
<div class="formAgg">
<p  class="text-center tit2"> Per aggiungere un prodotto a "I miei Prodotti" compila i seguenti campi:</p>


  <form method="post" id="frm">
<div  id="theFormDiv" class="text-center" >

  <div class="aggProd">
  <label id="label-first">Nome:</label><input list="prodotti" id="nomeProdotto" style="color:black; border-bottom:solid 1px black;" name="nomeProdotto" type="text" "> <div id="livesearch"></div>
  <label id="label-first">Quantit�:</label> <input id="quantita"  oninput="soloNumeri(this)"  style="color:black; border-bottom:solid 1px black;" name="last" type="text">
  <input type="button" id="addBottone" onclick="addProdotto()" value="aggiungi">  </input>
	</div>
</div>

</form>

<div class="text-center" >
<p class="click2" style="color: black">Oppure clicca qui:<a href="showProdottiFitosanitari" class="link2"> Visualizzare <em><u>"Prodotti Fitosanitari"</u></em> </a></p>
</div>
</div>

<%ArrayList<ProdottoMagazzino> lista = (ArrayList<ProdottoMagazzino>) request.getAttribute("lista");
ArrayList<ProdottoFitosanitario> listaPf = (ArrayList<ProdottoFitosanitario>) request.getAttribute("pf"); %>
 <%if(lista == null || lista.isEmpty()){ %>
 <h3  class="text-center">Non ci sono prodotti nel magazzino</h3>
 <%}else{ %>

<!-- Label -->
<div class="">
<p  class="tit text-center pt-3">I miei prodotti: </p>
</div>

<!-- Avvertenze -->
<div class="avvertenze">
<p id="avviso" class="text-center"><em>Leggere <u>CON ATTENZIONE</u> le etichetta  prima  dell'uso.
 Il diverso utilizzo di  questi  prodotti  rispetto a quanto  indicato  in  etichetta  pu�  essere  reato, oltre che <u>pericoloso per la TUA salute e DI CHI TI STA INTORNO</u>. Seguire il codice di condotta per l'uso prodotti fitosanitari,
 <a href="https://www.minambiente.it/sites/default/files/archivio/normativa/dim_22_01_2014.pdf" style="color:blue"> disponibile qui.</a></em> </p>
</div>





<!-- Elenco -->
 <div class="prodFit tableFixHead" >
  <table >
  <colgroup>
    <col style="width:40%">
    <col  style="width:40%">
    <col  style="width:20%">
    </colgroup>

	<!-- Intestazione -->
	<thead class="head-tabella">
    <tr id="intest">
      <th style="font-size:20px; padding:10px; padding-left: 20px"> Nome</th>
      <th style="font-size:20px; padding:10px"> Quantit�</th>
      <th style="font-size:20px; padding:10px"> Link</th>
    </tr>
    </thead>
 <%for (ProdottoMagazzino pm : lista){ %>
    <!-- Prodotto 1 -->
	<tr id="<%=pm.getProdotto().getNome()%>">
      <th style="padding:10px;padding-left:20px;"> <%= pm.getProdotto().getNome() %></th>
      <th style="padding:10px;"> <%if(pm.getQuantita()>0){ %> <%= pm.getQuantita() %><%}else{ %>Esaurito<%} %> </th>
      <th class="text-uppercase" style="padding:10px;"> <a href="<%= pm.getProdotto().getEtichetta() %>">Link Etichetta</a></th>
    </tr>

  <%} %>
  </table>
</div>
 <%} %>



 <datalist id="lista">
   <%for(ProdottoMagazzino  pm : lista)
    {
	   %>
   <option value="<%=pm.getProdotto().getNome()%>"> <a href=""><%= pm.getProdotto().getNome() %></a></option>
    <%
    }
  %>



 </datalist>
  <datalist id="prodotti">
   <%for(ProdottoFitosanitario pf : listaPf)
    {
	   %>
   <option value="<%=pf.getNome()%>"><%= pf.getNome() %></option>
    <%
    }
  %>




 </datalist>
<script type="text/javascript">


//Io sono la ricerca e non faccio ancora nulla
	function parolaccia(el) {
		 console.log("sono chiamatr")
		$( "#livesearch" ).show();

		$( "#livesearch" ).html("");
              //Chiamata asincorna con jquery ohohohohohoh!!!!
		         	jQuery.noConflict();

	    		 $.ajax({
		      			type:"POST",
		      			data:{"nome":el.value},
		      			url:"addTrattamentoLv",
		      			success : function(data){
		    	 		var object= JSON.parse(data);
		    	 		console.log(object);
		    	 		for (var i = 0; i < object.length; i++) {
				  	$( "#livesearch" ).append("<p onClick='setNome(this)' id='"+object[i].name +"'>"+object[i].name +"</p>");
				}
		    	}});



	 }





	  function setNome( el){

		  var value=el.innerText;


		     $("#nomeProdotto").val(value);
				$( "#livesearch" ).hide();


	  }


function addProdotto(){






 	jQuery.noConflict();

	//addProdottoMagazzino

     var nome =   $("#nomeProdotto").val();
	 var quantita = $("#quantita").val()
	 console.log(nome +" " +quantita)
	$.ajax({
			type:"POST",
			data:{"nomeProdotto":nome,
				"quantita":quantita
			},


			url:"addProdottoMagazzino",
			success : function(data){
	 		var object= JSON.parse(data);
	 	    showPop(object.inserimento);
	}
	});







}

function showPop(str){
	document.getElementById('delega-pop-up').style.display='flex'

	if(str=="true"){

			document.getElementById('titolo-pop-up').innerText="Operzione Effettuata";
		    document.getElementById('pop-text').innerText="Il prodotto � stato inserito!";
			$('.bottoni-pop-up').hide();
					window.setTimeout("ricaricaPagina()", 2000);
			}else if(str=="false"){
				document.getElementById('titolo-pop-up').innerText="Operzione NON Effettuata";

			 document.getElementById('pop-text').innerText="Il prodotto non  � stato inserito.";

				$('.bottoni-pop-up').hide();
				window.setTimeout("ricaricaPagina()", 2000);
			}

	}


function ricaricaPagina(){

    location.reload();


}
function soloNumeri(el){
	el.value=el.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');
}

</script>

  <div class="contenitore-delega" id="delega-pop-up">
		 <div id="blocco-delega" class="animazione-login">
		     <span class ="close-delegato" style="color: black"><i class=" fa fa-close" onclick="document.getElementById('delega-pop-up').style.display='none'"></i></span>
		    <p id="titolo-pop-up">Conferma </p>
		    <div >

		    <p id="pop-text"></p>
		     </div>


		    <div class="bottoni-pop-up" >
		      <input type="submit" class="colore-bottoni" id="confermaBottone" id="bottone-popu-conferma" value="Conferma">
		 		 <input type="button" id="annullaBottone" value="Annulla" onclick="document.getElementById('delega-pop-up').style.display='none'" class="colore-bottoni">
		     </div>

		    </div>


 </div>




   <%@ include file="footer.jsp"%>







</body>
</html>
