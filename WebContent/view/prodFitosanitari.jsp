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
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/yourcode.js"></script>

<script src="https://kit.fontawesome.com/yourcode.js"></script>

<script type="text/javascript">
$( document ).ready(function() {
$('#srch').on('input', function(){
	  var page = $(this).val();
	  window.location.href = "#"+page;
	});
});
</script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Agricol�rio - Prodotti Fitosanitari </title>
<style type="text/css">
body{
	   font-family: "Dosis";
	src: url("../font/Dosis/AnyConv.com__Dosis-Regular.otf");
	}

.dueColonne{
	display: none;
	visibility: hidden;
}




@media
only screen and (max-width: 1280px)  {

.dueColonne{
	display: block;
	visibility: visible;
	 width: 80%;
	 margin: auto;
}

.head-tabella2{
		background-color: #4CAF50;
	color: white;
	font-weight: normal;
	/* font-size: 34px; */
	height: auto;
}

#due {
	font-size: 16px;
}

.avvertenze{

	display: none;
}

.link{
	font-size: 16px !important;
}

.click{
	font-size: 17px !important;
}

.head-tabella{
	display: none;
}

.prodFit {
	display: none;
}


.tableFixHead{
	display: none;
}

.dueColonne{
	display: block;
	visibility: visible;
}

/*

    .head-tabella{
    display: none;

    }
	/* Force table to not be like tables anymore
	table, thead, tbody, th, td, tr {
		display: block;
	}

	/* Hide table headers (but not display: none;, for accessibility)
	thead tr {
		position: absolute;
		top: -9999px;
		left: -9999px;
	}

	tr { border: 1px solid #ccc; }

	td {
		/* Behave  like a "row"
		border: none;
		border-bottom: 1px solid #eee;
		position: relative;
		padding-left: 50%;
	}

	td:before {
		/* Now like a table header
		position: absolute;
		/* Top/left values mimic padding
		top: 6px;
		left: 6px;
		width: 45%;
		padding-right: 10px;
		white-space: nowrap;
	}

	/*
	Label the data

	td:nth-of-type(1):before { content: "Prodotto"; }
	td:nth-of-type(2):before { content: "Descrizione"; }
	td:nth-of-type(3):before { content: "Link"; }
	*/
}





</style>
</head>
<body>
  <%@ include file="navbar.jsp"%>

<%@ include file="navbarLaterl.jsp"%>
<!--  -->
<div class="titles">
<div  class="titoloPaginaReg ">
  <p id="titoloPaginaReg" class="text-center"> ,Prodotti Fitosanitari</p>
</div>
<div class="sottoTitoloReg" class="text-center">
  <p  id="sottoTitoloReg" class="text-center" class="w3-large">Visualizza l'elenco di tutti i prodotti fitosanitari esistenti e la loro etichetta. </p>
</div>
<div  class="iconHelp ">
   	<div class="pnd-pulse">
    <span class="pnd-pulse-dot">?</span>
    <span class="pnd-pulse-ring"></span>
    <div class=" description">
         <p class="pnd-pulse-text">
         In questa pagina sono presenti le informazioni generali di ogni prodotto fitosanitario esistente, comprese le specifiche di ognuno di essi e un collegamento alle rispettive etichette cartacee complete dei prodotti fitosanitari. <br>
         Puoi consultare la <a href="image/pericoli.pdf"> Lista dei pericoli </a> delle sostanze chimiche.
         <br>
         </p>

         <p class="pnd-pulse-text">
         Per altre informazioni pi� dettagliate consultare la pagina <a href="showFunzionalita?funzionalita=comefunziona"> Come Funziona </a> oppure contattare l'assistenza <a href="http://localhost/IUM/showFunzionalita?funzionalita=assistenza">qui </a>.   </p>
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
      <input type="text" class="testoRicerca" class="searchTerm" id="srch" placeholder="Digita il nome di un prodotto fitosanitario..." list="lista">

   </div>
</div>

<!-- Pulsanti -->
<div id="pulsante" class="text-center">
<p class="click" style="color: black">Clicca qui per:<a href="showMagazzino" class="link"> Mostra solo <em><u>"I miei prodotti"</u></em> in Magazzino</a></p>

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
    <col style="width:25%">
    <col  style="width:50%">
    <col  style="width:15%">
    </colgroup>

	<!-- Intestazione -->
	<thead class="head-tabella">
    <tr>
      <th style="font-size:20px; padding:10px; padding-left: 20px;"> Info</th>
      <th style="font-size:20px; padding:10px;"> Specifiche</th>
      <th style="font-size:20px; padding:10px;"> Link</th>
    </tr>
    </thead>
    <tbody>
    <!-- Prodotti -->
    <%ArrayList<ProdottoFitosanitario> lista =(ArrayList<ProdottoFitosanitario>) request.getAttribute("pf");

    for(ProdottoFitosanitario pf : lista)
    {
    %>
    <tr id="<%=pf.getNome()%>">
      <td style="padding:10px;padding-left: 20px;"><span style="font-size:22px;font-weight:bold;"> <%=pf.getNome()%></span><br>
      <%=pf.getImpresa() %><br>
       <span style="font-size:20px;"><strong>Stato:</strong> <span class="text-uppercase"><%=pf.getStato() %></span> </span><br>
      Scade il <span class="text-uppercase"><%= pf.getScadenza().getDate()+"/"+((pf.getScadenza().getMonth())+1)+"/"+((pf.getScadenza().getYear())+1900) %></span>
      </td>

      <td style="padding:10px;">

      <strong>Funzione espletata:</strong> <span class="text-capitalize"><%=pf.getFunzione() %></span><br>
      <strong>Avversit� combattute:</strong> <span class="text-capitalize"><%=pf.getAvversita() %></span><br>
     <strong>Tempo di Rientro:</strong> <%=pf.getTemporientro()%> giorni.<br>
     <strong>Tempo di Carenza:</strong> <%=pf.getTempocarenza() %> giorni <br>
     <strong>Quantit� per confezione:</strong> <%=pf.getQuantita() %> <br>
     <strong>Indicazioni di pericolo:</strong> <%=pf.getPericolo() %> <br>


      </td>
      <td style="padding:10px"> <a href="<%= pf.getEtichetta() %>"><span class="text-uppercase" style="font-size: 20px;">Link Etichetta</span></a></td>
    </tr>
    <%} %>
    </tbody>
  </table>
</div>

<div class="dueColonne">
  <table >
  <colgroup>
    <col style="width:35%">
    <col  style="width:65%">
    </colgroup>

   	<!-- Intestazione -->
	<thead class="head-tabella2">
    <tr >
      <th style="font-size:20px; padding:10px; padding-left: 20px;" id="due"> Info</th>
      <th style="font-size:20px; padding:10px;"id="due"> Specifiche</th>
    </tr>
    </thead>
<tbody>
    <!-- Prodotti -->

    <%
    for(ProdottoFitosanitario pf : lista)
    {
    %>
    <tr id="<%=pf.getIdProdottoFitosanitario()%>">
      <td style="padding:10px; padding-left: 20px;" id="due"><span style="font-size:22px;font-weight:bold;"> <%=pf.getNome()%></span><br>
      <%=pf.getImpresa() %><br>
       <span style="font-size:20px;"><strong>Stato:</strong> <span class="text-uppercase"><%=pf.getStato() %></span> </span><br>
      Scade il <span class="text-uppercase"><%= pf.getScadenza().getDate()+"/"+((pf.getScadenza().getMonth())+1)+"/"+((pf.getScadenza().getYear())+1900) %></span>
      </td>
      <td style="padding:10px" id="due">
      <strong>Funzione espletata:</strong> <span class="text-capitalize"><%=pf.getFunzione() %></span><br>
      <strong>Avversit� combattute:</strong> <span class="text-capitalize"><%=pf.getAvversita() %></span><br>
     <strong>Tempo di Rientro:</strong> <%=pf.getTemporientro()%> giorni.<br>
     <strong>Tempo di Carenza:</strong> <%=pf.getTempocarenza() %> giorni <br>
         <strong>Quantit� per confezione:</strong> <%=pf.getQuantita() %> <br>
         <strong>Indicazioni di pericolo:</strong> <%=pf.getPericolo() %> <br>
     <a href="<%= pf.getEtichetta() %>"><span class="text-uppercase" style="font-size: 20px;">Link Etichetta</span></a>
     </td>

    </tr>
    <%} %>
    </tbody>
</table>



</div>





   <%@ include file="footer.jsp"%>



 <datalist id="lista">
   <%for(ProdottoFitosanitario pf : lista)
    {
	   %>
   <option value="<%=pf.getNome()%>"> <a href="<%=pf.getIdProdottoFitosanitario() %>"><%= pf.getNome() %></a></option>
    <%
    }
  %>



 </datalist>













 <!-- Codice Ciro -->

<!--  Barra di Ricerca
<div class="wrap">
   <div class="search">
   <button type="submit" class="searchButton">
        <i class="fa fa-search"></i>
     </button>
      <input type="text" class="searchTerm" placeholder="Digita il nome o il codice di un prodotto fitosanitario...">

   </div>
</div>
 -->

<!-- Avvertenze
<div class="avvertenze">
<p id="avviso" class="text-center"><em>Leggere <u>CON ATTENZIONE</u> le etichetta  prima  dell'uso.
 Il diverso utilizzo di  questi  prodotti  rispetto a quanto  indicato  in  etichetta  pu�  essere  reato, oltre che <u>pericoloso per la TUA salute e DI CHI TI STA INTORNO</u>. Seguire il codice di condotta per l'uso prodotti fitosanitari,
 <a href="https://www.minambiente.it/sites/default/files/archivio/normativa/dim_22_01_2014.pdf" style="color:blue"> disponibile qui.</a></em> </p>
</div>
 -->
<!-- Elenco
 <div class="prodFit" style="overflow-x:auto;">
  <table>
   -->
	<!-- Intestazione
    <tr id="intest">
      <th> Nome</th>
      <th> Descrizione</th>
      <th> Link</th>
    </tr>
     -->
    <!-- Prodotto 1
    <tr>
      <td>CENTURION 240 NEO Erbicida Grammicida Selettivo per colture orticole ed erbace</td>
      <td>Prodotto ad emulsione concentrata. Prodotto e distribuito da: Arysta LifeScience S.A.S.s</td>
       <td> <a href="#"> Link all'etichetta </a></td>
    </tr>
     -->

    <!-- Prodotto 2
      <tr>
      <td>CENTURION 240 NEO Erbicida Grammicida Selettivo per colture orticole ed erbace</td>
      <td>Prodotto ad emulsione concentrata. Prodotto e distribuito da: Arysta LifeScience S.A.S.s</td>
       <td> <a href="#"> Link all'etichetta </a></td>
    </tr>
     -->

    <!-- Prodotto 3
     <tr>
      <td>CENTURION 240 NEO Erbicida Grammicida Selettivo per colture orticole ed erbace</td>
      <td>Prodotto ad emulsione concentrata. Prodotto e distribuito da: Arysta LifeScience S.A.S.s</td>
       <td> <a href="#"> Link all'etichetta </a></td>
    </tr>

       -->
    <!-- Prodotto 4
    <tr>
      <td>CENTURION 240 NEO Erbicida Grammicida Selettivo per colture orticole ed erbace</td>
      <td>Prodotto ad emulsione concentrata. Prodotto e distribuito da: Arysta LifeScience S.A.S.s</td>
       <td> <a href="#"> Link all'etichetta </a></td>
    </tr>

       -->
    <!-- Prodotto 5 <tr>
      <td>CENTURION 240 NEO Erbicida Grammicida Selettivo per colture orticole ed erbace</td>
      <td>Prodotto ad emulsione concentrata. Prodotto e distribuito da: Arysta LifeScience S.A.S.s</td>
       <td> <a href="#"> Link all'etichetta </a></td>
    </tr>


  </table>
</div>

 -->




</body>
</html>
