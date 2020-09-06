<%@page import="com.agricolario.bean.Notifica"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agricol�rio - Notifiche</title>
</head>
<body>

<%@ include file="navbar.jsp"%>
<%@ include file="navbarLaterl.jsp"%>

<div class="container-fluid  ">


<div class="titles">
<div  class="titoloPaginaReg">
  <p id="titoloPaginaReg" class="text-center"> ,Notifiche</p>
</div>
<div class="sottoTitoloReg" class="text-center">
  <p  id="sottoTitoloReg" class="text-center" class="w3-large"> Visualizza le tue notifiche </p>
</div>
<div  class="iconHelp ">
   	<div class="pnd-pulse">
    <span class="pnd-pulse-dot">?</span>
    <span class="pnd-pulse-ring"></span>
    <div class=" description">
        <p class="pnd-pulse-text">
        Visualizza le notifiche ricevute. Se si tratta di notifiche relative alle scadenze di trattamenti, ricevi il numero di giorni mancanti alla fine del trattamento. Se un delegato esegue delle modifiche, ricevi un avviso in cui sar� presente il nome del delegato e l'indicazione delle modifiche effettuate da esso. Se la notifica riguarda lo stoccaggio dei prodotti fitosanitari, viene indicato il numero di prodotti rimanenti.
      </p>
         <p class="pnd-pulse-text">
           Per altre informazioni pi� dettagliate consultare la pagina <a href=""> Come Funziona </a> oppure contattare l'assistenza <a href=""> qui </a>.
         </p>
    </div>
    </div>
</div>
</div>

		<div id="sezione-notifca " class="text-center" style="width: 100%; height: 500px;overflow-x:auto; justify-content: center">

					   <%ArrayList<Notifica> lista = (ArrayList<Notifica>) request.getAttribute("lista") ;


					   if(lista.isEmpty() || lista== null){
					   %>
					   <h4>Non ci sono notifiche disponibili!</h4>
					   <%
					   }else{
					   for(Notifica n : lista){
					   %><div class="container justify-content-center">
						<div class="card border-0 mx-5 my-3" style="background:#e6edb7">
    <div class="card-body"> <a style="font-size: 18px; font-weight:bold; padding-right: 10px;"> <%=n.getDataNotifica() %> </a> <%=n.getInformazioni() %> </div></div></div>
						<%}}%>
		</div>




	</div>
<%@ include file="footer.jsp"%>

</body>
</html>
