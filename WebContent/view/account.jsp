<%@page import="com.agricolario.bean.Utente"%>
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
/*GRANDEZZE large, medium, small, extra-large e extra-small*/




/*small devices*/
@media all and (max-width: 767px) and (min-width: 601px) {
	

}

/*extra-small devices*/
@media all and (max-width: 600px) {



}


</style>


<title>Agricolàrio- Area Utente</title>
</head>
<body>
<%@ include file="navbar.jsp"%>



<div class="container-fluid mt-5 ">
	<div class="row justify-content-center ">
		<div class="col col-lg-12 text-center ">
			<h2 id="titoloPagina"> ,Area Utente</h2>
		</div>
	</div>

</div>

<div id="area-utente" >
	<div  class="item-a ">
	<%Utente user =(Utente) session.getAttribute("user"); 
	                            
	                    if(user!=null){
	
	%>
					<h4 id="titoloCaselle" >Dati Utente</h4>
					<div class="datiUtente">
					<br>
					<p id="righe"><strong>Nome:</strong><a id="caselle"> <%= user.getNome() %></a></p><br>
					<p id="righe"><strong>Cognome:</strong> <a id="caselle"> <%= user.getCognome() %></a></p><br>
					<p id="righe"><strong>Data di nascita:</strong> <a id="caselle"> <%=user.getDataNascita() %></a></p><br>
					<p id="righe"><strong>Ruolo:</strong> <a id="caselle"><%= user.getRuolo() %></a></p><br>
					</div>
					
					
	</div>
	
	<div  class="item-b ">
	
					<h4 id="titoloCaselle" >Dati Azienda</h4>
					<br>
	<%if (user.getAzienda().getNomeAzienda()!= null ){ %>
					<p id="righe2"><strong>Nome:</strong> <a id="caselle"><%= user.getAzienda().getNomeAzienda() %></a></p><br>
					<p id="righe2"><strong>Città:</strong> <a id="caselle"><%= user.getAzienda().getCittà() %></a></p><br>
					<p id="righe2"><strong>Indirizzo:</strong> <a id="caselle"><%=user.getAzienda().getIndirizzo() %></a></p><br>
					<p id="righe2"><strong>CAP:</strong> <a id="caselle"><%= user.getAzienda().getCap() %></a></p><br>
					<p id="righe2"><strong>Data Fondazione:</strong> <a id="caselle"> <%= user.getAzienda().getDataFondazione() %></a></p><br>
	<%}else{ %>
	
			<span id="caselle"><strong>Non sei stato ancora delegato!</span><br>
	<% }} %>
					
	</div>
	
</div>


	<div id="divMag" class="text-center">
	<h4 id="titoloCaselle" >Magazzino</h4>
    <a href= "showMagazzino"> <button id="bottoneMag"  > Visualizza le tue giacenze.</button></a>
</div>








<%@ include file="footer.jsp"%>
</body>
</html>