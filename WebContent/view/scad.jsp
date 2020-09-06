
<%@page import="com.agricolario.dao.ProdottoFitosanitarioDAO"%>
<%@page import="com.agricolario.servlet.registrazione"%>
<%@page import="com.agricolario.bean.Trattamento"%>
<%@page import="com.agricolario.bean.RegistroFitosanitario"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.util.Date" %>

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

@media 
only screen and (max-width: 1280px)  {
    .head-tabella{
    display: none;
    
    }
    
    td::before {
	position: absolute;
	top: 6px;
	left: 6px;
	width: 45%;
	padding-right: 10px;
	white-space: nowrap;
	font-weight: bold;
} 

	/* Force table to not be like tables anymore */
	table, thead, tbody, th, td, tr { 
		display: block; 
	}
	
	/* Hide table headers (but not display: none;, for accessibility) */
	thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	
	tr { border: 1px solid #ccc; }
	
	td { 
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
	}
	
	td:before { 
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
	}
	
	/*
	Label the data
	*/
	td:nth-of-type(1):before { content: "Scadenza"; }
	td:nth-of-type(2):before { content: "Fitofarmco"; }
	td:nth-of-type(3):before { content: "Scopo"; }
	td:nth-of-type(4):before { content: "Coltura"; }
	td:nth-of-type(5):before { content: "Rifermento"; }
}



</style>
<title>Agricolàrio - Scadenze </title>
</head>
<body >




<!--
<div class="w3-container">
  <h3 class="text-center"><em>Scadenze dei Trattamenti Fitosanitari</em></h3>
  <p class="text-center" class="w3-large">Elenco di tutti i prodotti fitosanitari esistenti. Ognuno di esso è caratterizzato da informazioni che ne specificano il tipo, l'utilizzo e le avvertenze. </p>
</div> 

  -->
  <%@ include file="navbar.jsp"%>
 
<%@ include file="navbarLaterl.jsp"%>



<div class="titles">
<div  class="titoloPaginaReg ">
  <p id="titoloPaginaReg" class="text-center">  ,Scadenze</p>
</div>
<div class="sottoTitoloReg" class="text-center">
  <p  id="sottoTitoloReg" class="text-center" class="w3-large"> Visualizza le scadenze dei trattamenti fitosanitari presenti nel tuo registro. </p>
</div>  
<div  class="iconHelp "> 	
   	<div class="pnd-pulse">								
    <span class="pnd-pulse-dot">?</span>
    <span class="pnd-pulse-ring"></span>
    <div class=" description">
       <p class="pnd-pulse-text"> 
         La tabella è formata da cinque colonne.  </p>
         <ul class="pnd-pulse-text">
          <li> Scadenza del trattamento fitosanitario </li>
          <li> Fitofarmaco utilizzato sulla coltura</li>
          <li> Scopo per cui si è svolto il trattamento sulla coltura</li>
          <li> Coltura trattata</li>
          <li> Riferimento al registro in cui si trova il trattamento in questione </li>
         </ul>
         <p class="pnd-pulse-text"> 
         Per altre informazioni più dettagliate consultare la pagina <a href="showFunzionalita?funzionalita=comefunziona"> Come Funziona </a> oppure contattare l'assistenza <a href="http://localhost/IUM/showFunzionalita?funzionalita=assistenza"> qui </a>.   </p>
     </div>	
    </div>
</div>
</div> 





<%  ArrayList<RegistroFitosanitario> lista =(ArrayList<RegistroFitosanitario>)request.getAttribute("listaRegistro") ;   %>

<!-- Elenco -->
 <div class="scad  "  style="height: 500px">
 <div class="tableFixHead">
<%        
boolean ok=false;
if(!lista.isEmpty()){
for(Trattamento reg : lista.get(0).getTrattamenti()){ 
 int carenza = new ProdottoFitosanitarioDAO().getTempoCarenza(reg.getNomeProdotto());
	 Date dt = reg.getDatInzio(); 
 Calendar c = Calendar.getInstance(); 
 c.setTime(dt); 
 c.add(Calendar.DATE, carenza);
 dt = c.getTime();	System.out.println("ok");	
 
 Date oggi= new Date(System.currentTimeMillis());

 if(dt.after(oggi)){
	ok= true;
	System.out.println("ok");	
}
}






if(!lista.get(0).getTrattamenti().isEmpty() && ok){                     %>
  <table>
	<!-- Intestazione -->
	<thead class="head-tabella">  
    <tr >
      <th> Scadenza del trattamento</th>
      <th> Fitofarmaco</th>
       <th>Scopo</th>
      <th> Coltura</th>
      <th> Riferimento</th>
    </tr>
    </thead>
    <tbody>
    <!-- Prodotto 1 -->
    <%  
    
    ArrayList<Date> lst = new ArrayList<Date>();
    
    for(Trattamento reg : lista.get(0).getTrattamenti()){ 
     int carenza = new ProdottoFitosanitarioDAO().getTempoCarenza(reg.getNomeProdotto());
     System.out.println(carenza);
   	 Date dt = reg.getDatInzio(); 
	 Calendar c = Calendar.getInstance(); 
	 c.setTime(dt); 
	 c.add(Calendar.DATE, carenza);
	 dt = c.getTime();
	 
	
	 lst.add(dt);
	 java.util.Collections.sort(lst);
	 
    }
    
	for(Date d : lst) {
		for(Trattamento reg : lista.get(0).getTrattamenti()){ 
			Date oggi= new Date(System.currentTimeMillis());
	    	Date dt = reg.getDatInzio(); 
	   	 Calendar c = Calendar.getInstance(); 
	   	 c.setTime(dt); 
	   	 c.add(Calendar.DATE, new ProdottoFitosanitarioDAO().getTempoCarenza(reg.getNomeProdotto()));
	   	 dt = c.getTime();
		if(d.compareTo(dt)==0 ){
		int anno = d.getYear()+1900;
		 int mese = d.getMonth()+1;
		 int giorno =d.getDate();
		 String date= giorno+"/"+ mese+"/"+anno;
	 		if(d.after(oggi)){
	 %>
     <tr>
      <td><%=date %></td>
  	  <td><%= reg.getNomeProdotto() %></td>
  	  <td><%= reg.getAvversita() %></td>
      <td><%= reg.getColtura() %></td>
      
      <% for(RegistroFitosanitario trovaAnno : lista){
    	  if (trovaAnno.getDataCreazione().getYear()==reg.getDatInzio().getYear()){
    		  //non serve
    %>
       <td><a href="showRegistro">Vai al Registro</a></td>
       <% }}%>    
       </tr>
    <%}}}}%>
      </tbody>
      </table>
  
  <%} else{ %>
  <div class="col col-lg-12 text-center ">
	
  <h5 class="text-center" class="w3-large">Non ci sono scadenze </h5>
</div>
  <%}} %>
</div> 
</div>  

</body>
</html>