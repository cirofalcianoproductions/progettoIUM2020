
<%@page import="java.util.*"%>
<%@page import="java.util.Date"%>
<%@page import="com.agricolario.bean.Trattamento"%>
<%@page import="com.agricolario.bean.RegistroFitosanitario"%>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" href="css/navbar.css">

<script type="text/javascript">

$( window ).ready(function() {
    
	  function myFunction( el){
		  var value=el.value;
		  console.log(value);		  
	  }
	
});

</script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"
  />
  
<title>Agricolàrio - Registro dei Trattamenti Fitosanitari</title>
<style type="text/css">

body{
	   font-family: "Dosis";
	src: url("../font/Dosis/AnyConv.com__Dosis-Regular.otf");
	} 



.titles{
width: 100%;
height: 100px;
}

@media 
only screen and (max-width: 1280px)  {
    .head-tabella{
    display: none;
    
    }
    
    th, td {	/*anche registro*/
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
	td:nth-of-type(1):before { content: "Prodotto"; }
	td:nth-of-type(2):before { content: "Coltura"; }
	td:nth-of-type(3):before { content: "Data Inizio"; }
	td:nth-of-type(4):before { content: "Superficie"; }
	td:nth-of-type(5):before { content: "Quantita utilizzata"; }
	td:nth-of-type(6):before { content: "Avversità"; }
	td:nth-of-type(7):before { content: "Note"; }
}




td> input[type="text"]{
 border: solid 1px black;
 color: black;
}
#livesearch{
 z-index: 1;
   position: absolute;
 display: none;
 height: auto;
 max-height:100px;
 width:10%;
 max-width:11;
 margin-top: -15px;
 overflow-x:auto;
 background-color: white;
}


.buttone-modifica{
/*width: 12%;
height: auto;
background-color: #009e0f;
	color:white;
	font-weight: bold;*/
	
	height: 25%;
	
	background-color: #23a9d8;
	color:white;
	font-weight: ;
	border: none;
	text-align: center;
	border-radius: 5px;
	font-size: 24px;
}


.buttone-modifica:hover{
background-color: RoyalBlue;
}

.bottoni{

text-align: center;


}
#bottone-aggiungi {
 /* background-color: DodgerBlue; 
  border: none; 
  color: white; 
  padding: 12px 16px; 
  font-size: 16px;
  cursor: pointer; */
  
  	height: 25%;
	width: 40%;
	background-color: #23a9d8;
	color:white;
	font-weight: ;
	border: none;
	text-align: center;
	border-radius: 5px;
	font-size: 28px;
}

#bottone-aggiungi:hover {
  background-color: RoyalBlue;
}





input[type="text"]:disabled {
border: none;}
input[type="date"]:disabled {
border: none;}

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


#bottone-popu-conferma:hover{

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


#titolo-pop-up{
font-size: 28px;
font-weight: bold; 
 margin: auto;
 width: 70%;
}

#pop-text {
	font-size: 18px;
	/* margin: auto; */
	/* width: 80%; */
	margin-left: 50px;
}
</style>


</head>
<body>
<%@ include file="navbar.jsp"%>
 
<%@ include file="navbarLaterl.jsp"%>


<div class="container-fluid  ">


<div class="titles">
<div  class="titoloPaginaReg ">
  <p id="titoloPaginaReg" class="text-center"> ,Registro dei Trattamenti Fitosanitari</p>
</div>
<div class="sottoTitoloReg" class="text-center">
  <p  id="sottoTitoloReg" class="text-center" class="w3-large"> Visualizza, crea, modifica con facilità il tuo registro dei trattamenti fitosanitari. </p>
</div>  
<div  class="iconHelp "> 	
   	<div class="pnd-pulse">								
    <span class="pnd-pulse-dot">?</span>
    <span class="pnd-pulse-ring"></span>
    <div class=" description">
        <p class="pnd-pulse-text"> 
         I pulsanti a destra della tabella ti permettono di effettuare operazioni di Creazione, Modifica, Eliminazione e Delega del registro. Le taghette a sinistra della tabella, qualora ce ne fossero, indicano i registri degli anni precedenti e per visualizzarli basta cliccarci sopra.Per aggiungere un trattamento è necessario cliccare sul pulsante "Aggiungi trattamento" presente al centro della riga vuota nella tabella.  </p>
         <p class="pnd-pulse-text"> 
         Per altre informazioni più dettagliate consultare la pagina <a href="showFunzionalita?funzionalita=comefunziona"> Come Funziona </a> oppure contattare l'assistenza <a href="showFunzionalita?funzionalita=assistenza">qui</a>.   </p>
    </div>	
    </div>
</div>
</div> 




<div id="grid-registro" class="mt-5">
<%ArrayList<RegistroFitosanitario> listaReg = (ArrayList<RegistroFitosanitario>)request.getAttribute("listaRegistro");
boolean tastoElimina = false;
Utente user = (Utente) session.getAttribute("user");
boolean primo= true;
int idRegistro=0;
boolean creazione=false;
if(user!=null ){
	if(!listaReg.isEmpty()){
%>
<div id="tab-registro"  class="tab-registro">


<%


for(RegistroFitosanitario reg : listaReg ){ 
	int anno=0;

	if(reg.getDataCreazione()!= null){
	Calendar calendar = Calendar.getInstance();
	calendar.setTime(reg.getDataCreazione());
	System.out.println();
	anno=calendar.get(Calendar.YEAR);
	}
	int annoCorrente=  0;
    annoCorrente= Calendar.getInstance().get(Calendar.YEAR);
	if(annoCorrente- anno==3){
		
		tastoElimina= true;
		
	}
	
	
	
	if(primo){
	primo=false;
	idRegistro= reg.getIdRegistroFitosanitario();
	

%>
<button class="tablinks" onclick="apriContenuto(event,<%=anno%>)" id="defaultOpen"><%=anno%></button>
<%}else{ %>
<button class="tablinks" onclick="apriContenuto(event,<%=anno%>)"><%=anno%></button>
<% }} %>
</div>
    
<div id="contenuto-registro" >
<%



for(RegistroFitosanitario reg : listaReg ){ 
	 int annoCur=0;
	 int annoRegistro=0;
	   if(reg.getDataCreazione()!= null){
	    annoCur= Calendar.getInstance().get(Calendar.YEAR);
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(reg.getDataCreazione());
	    annoRegistro=calendar.get(Calendar.YEAR);;
	   }
              %>
<div id="<%=annoRegistro%>" class="tabcontent tableFixHead">
<div class="tableFixHead">
<table class="  table-striped">
<input type="hidden" id="idregistro" value="<%= reg.getIdRegistroFitosanitario()%>">


  <colgroup>
    <col style="width:12%">
    <col style="width:10%">
    <col style="width:11%">
    <col style="width:9%">
    <col style="width:9%">
    <col style="width:18%">
    <col style="width:45%">
       
<%
   
        if(annoCur== annoRegistro  ){ 
        
        creazione=true;
        %>     <col  style="width:5%"><%} %>
  </colgroup>
  <thead class="head-tabella">
    <tr class="text-center" style=" height:50px;">
      <th class="text-center" scope="col" style="font-size:20px">Coltura</th>
      <th class="text-center" scope="col" style="font-size:20px; padding: 10px;">Prodotto</th>
      <th class="text-center" scope="col" style="font-size:20px">Data inizio</th>
      <th class="text-center" scope="col" style="font-size:20px">Superficie</th>
       <th class="text-center" scope="col" style="font-size:20px">Quantità</th>
      <th class="text-center" scope="col" style="font-size:20px">Avversità</th>
      <th class="text-center" scope="col" style="font-size:20px">Note</th>
       <%
   
        if(annoCur== annoRegistro  ){ 
        
        creazione=true;
        %>
      <th scope="col" ></th>
           <%} %>
      
    </tr>
  </thead>
  <tbody > 
  <% 
       
    int i =0;
      for(Trattamento u : reg.getTrattamenti()){
       
       
  %>
    <tr scope="row" class="text-center trattamenti" id="<%=u.getIdTrattamento()%>">
      <td><input type="text" value="<%=u.getColtura() %>" disabled="disabled"  class="input-trattamento<%=u.getIdTrattamento()%> input-modifica text-center" id="coltura<%=u.getIdTrattamento()%>"></td>
     <td><input type="text" value="<%= u.getNomeProdotto() %>" disabled="disabled" class="input-trattamento<%=u.getIdTrattamento()%> input-modifica text-center" id="nomeProdotto<%=u.getIdTrattamento()%>" ></td>

      <td><input type="date" value="<%= u.getDatInzio() %>" disabled="disabled"  class="input-trattamento<%=u.getIdTrattamento()%>  text-center input-modifica"  id="data<%=u.getIdTrattamento()%>"></td>
      <td><input type="text" value="<%= u.getSuperficie() %>" disabled="disabled"  class="input-trattamento<%=u.getIdTrattamento()%> text-center input-modifica" oninput="soloNumeri(this)" id="sup<%=u.getIdTrattamento()%>" ></td>
       <td ><input type="text" value="<%= u.getQuantita()%>" disabled="disabled"  class="input-trattamento<%=u.getIdTrattamento()%> text-center input-modifica"oninput="soloNumeri(this)"id="quantita<%=u.getIdTrattamento()%>"></td>
      <td><input type="text" value="<%= u.getAvversita() %>" disabled="disabled"  class="input-trattamento<%=u.getIdTrattamento()%> text-center input-modifica" id="avv<%=u.getIdTrattamento()%>"></td>
     <td ><input type="text" value="<%=u.getNote() %>" disabled="disabled"   class="input-trattamento<%=u.getIdTrattamento()%> text-center input-modifica" id="note<%=u.getIdTrattamento()%>"></td>
        <%
     
        if(annoCur== annoRegistro  ){ 
                creazione=true;
        %>
     <td scope="col">  <input type="checkbox"  checked="checked" style=" display:none" class="select-prodotto" onclick="visualizzaBottoni(this)" value="<%=u.getIdTrattamento()%>" >  </td>
     
     <%} %>
         </tr>
    
    <%
    
      i++;
           } %>
    <%
   
        if(annoCur== annoRegistro  ){ 
        
        creazione=true;
        %>
   <tr scope="row" class="text-center ultimo">
      <td colspan="8"><div class="text-center"> <button   href="#"  id="bottone-aggiungi"><i class="fa fa-plus-circle"></i> Aggiungi trattamento</button></div></td>
     </tr>
    
    
    <%}%>
  </tbody>
</table>
</div>
</div>

<% }%>

</div>

<% }else{ %>
<div class="text-center">
</div>
<div class="text-center">
<h4>Non ci sono Trattamenti</h4>
</div>

<%} %>

<div class="opRegistro" >
       
        
         <%if(user.getRuolo().equals("titolare")){ %>  <button class=" shadow  buttone-registro" <%if(creazione ){%>  disabled="disabled" style="background-color: gray;"  <%}%>onclick="showPop(this.id)" id="crea-registro" >Crea  </button><%} %>
      <%if(user.getRuolo().equals("titolare")){ %>       <button class="shadow  buttone-registro" onclick="redirectDelega(<%=idRegistro %>,<%=user.getId()%>)">Delega</button><%} %>
        <button class="shadow buttone-registro" id="modifica"  onclick="clickModifica(this)" <%if(listaReg.isEmpty()){ %> disabled="disabled" style="background-color: gray;"<%}  %>>Modifica</button>
        <button class="shadow buttone-registro" <%if(user.getRuolo().equals("delegato")|| !tastoElimina ){ %>  disabled="disabled" style="background-color: gray;"  <%}%> onclick="showPop(this.id)" id="elimina-registro" >Elimina</button>
     <%if(user.getRuolo().equals("titolare")){ %>   <button class="shadow buttone-registro"   onclick="showPop(this.id)" id="approva">Approva Modifiche</button><%}%>
        
</div>
                
</div>


      </div> 
      
      <%} %>
      <div class="contenitore-delega" id="delega-pop-up">
		 <div id="blocco-delega" class="animazione-login">
		     <span class ="close-delegato" style="color: black"><i class=" fa fa-close" onclick="document.getElementById('delega-pop-up').style.display='none'"></i></span>
		    <p id="titolo-pop-up" class="text-center">Conferma </p>
		    <div >
		    
		    <p id="pop-text"></p>
		     </div>
		  
		   
		    <div class="bottoni-pop-up" >
		      <input type="submit" class="colore-bottoni" id="bottone-popu-conferma" value="Conferma">
		 		 <input type="button" id="annullaBottone" value="Annulla" onclick="document.getElementById('delega-pop-up').style.display='none'" class="colore-bottoni">
		     </div>
		
		    </div>
		           
		 
 </div>
      
      <script type="text/javascript">
       var annullaModifica=false;
      function clickAnnulla( ){
       	 $('.input-modifica').prop('disabled',true);

          $(".select-prodotto").prop("checked", false);

    		var buttons=document.getElementsByClassName('select-prodotto')
    	    //$('.select-prodotto').prop('disabled', false);
    	    for (i = 0; i < buttons.length; i++) {
    	        buttons[i].disabled = false;
    	    } 
    		$('.bottoni').empty();
    		console.log('Sono stato cliccato');
    		
    	}
      function clickAnnullaAggiungi(){
    	  
    	  
  		$('#trattamento , .bottoni').empty();
  		$("#bottone-aggiungi").prop('disabled',false);

    	  
    	  
      }
    
      
    
      function apriContenuto(evt,anno) {
    	  // Declare all variables
    	  var i, tabcontent, tablinks;

    	  // Get all elements with class="tabcontent" and hide them
    	  tabcontent = document.getElementsByClassName("tabcontent");
    	  for (i = 0; i < tabcontent.length; i++) {
    	    tabcontent[i].style.display = "none";
    	  }

    	  // Get all elements with class="tablinks" and remove the class "active"
    	  tablinks = document.getElementsByClassName("tablinks");
    	  for (i = 0; i < tablinks.length; i++) {
    	    tablinks[i].className = tablinks[i].className.replace(" active", "");
    	  }

    	  // Show the current tab, and add an "active" class to the link that opened the tab
    	 document.getElementById(anno).style.display = "block";
    	  evt.currentTarget.className += " active";
    	}
      //------------------------------------------------------------------------------
      document.getElementById("defaultOpen").click();
    //------------------------------------------------------------------------------
      function clickModifica(el){
    	  $("#bottone-aggiungi").prop('disabled',false);

    	  if(annullaModifica===false){
    		 
    	  $(el).css( "background-color" ,"red");
    	  $(el).text("Annulla");
    	  $(".select-prodotto").show();
      	  annullaModifica=true;   
      	  $('#trattamento , .bottoni').empty();
	      $(".select-prodotto").prop("checked", false);
   	      $(".select-prodotto").prop("disabled", false); 
   	      

    	  }else{
    	      	$('#trattamento , .bottoni').empty();

       	      $(".select-prodotto").prop("disabled", false); 
  	          $(".select-prodotto").prop("checked", false);
  	          $('#trattamento , .bottoni').empty();
    		  $( el ).css( "background-color" ,"#23A9D8");
        	  $(el).text("Modifica");
        	  $(".select-prodotto").hide();
          	 $('.input-modifica').prop('disabled',true);
        	  annullaModifica=false;    
    	  }
    	  
      }
    //---------------------------------------------------------------------- onchange="deleteNome()"--------

      var set= false;
      $("#bottone-aggiungi").click(function(){
    	  cercaColtura("");
    	  $("#bottone-aggiungi").prop('disabled',true);
    	      var bottoneModifica= document.getElementById('modifica');
    	      if(annullaModifica===true){
	          clickModifica(bottoneModifica);
    	      }
	          $("table .ultimo").before('<tr scope="row" class="text-center trattamenti" id="trattamento">'+
	        		  '<td ><select id="coltura"  onchange="getProdottoFitoSanitario()"><option>---------</option></select></td>'+
    		   //   '<td  > <input type="text" class="input-trattamento"  onchange="deleteNome()" onkeyup="deleteNome()" id="nomeProdotto" value="">'+
    		   '<td  > <select  id="nomeProdotto" onchange="getNomeTrattamento()""><option>---------</option></select>'+
    		      '<div id="livesearch"></div>'+
    		      '</td>'+
    		     
    		      '<td ><input  type="date" id="data" value="2020-06-26" min="2020-01-01" max="2020-12-31">'+
    		      ' <td> <input  type="text" id="superficie" oninput="soloNumeri(this)"></td>'+
    		      ' <td> <input  type="text" id="quantita" value="" oninput="soloNumeri(this)"></td>'+
    		    //  '<td ><input type="text" id="avv"></td>'+
    		       '<td  > <select  id="avv"><option>---------</option></select>'+
    		     '<td ><input type="text" id="note"></td>'+
    		     		'<td></td>'								+
    		     '</tr>'+'<tr  scope="row" class="bottoni" > <td colspan="8" class= "text-center"> <button onclick="showPop(this.id)" class="shadow buttone-modifica" id="aggiungi">Aggiungi</button> <button class="shadow buttone-modifica" id="annulla" onClick="clickAnnullaAggiungi()">Annulla</button></td><tr>');
    	  $("#nomeProdotto").keyup(function() {

			 if(this.value!="") {
        	 $( "#livesearch" ).html("");
 			 
        	 jQuery.noConflict();
  
     $("#livesearch").show();
/*
     $.ajax({
	      type:"POST",
	      data:{"nome":this.value},
	      url:"addTrattamentoLv",
	      success : function(data){
	    	 var object= JSON.parse(data);
	    	 console.log(object);
	    	 for (var i = 0; i < object.length; i++) {
				 $( "#livesearch" ).append("<p onClick='cercaColtura(this)' id='"+object[i].name +"'>"+object[i].name +"</p>");
			}
	    	}});
*/
			 }else{
	
    $("#livesearch").hide();}
        	 
			 
    	 
         });});
         
 function getProdottoFitoSanitario(){
	 var coltura =  $("#coltura").val();
	 console.log(coltura);
	 $("#nomeProdotto").html("");
	  
     $.ajax({
	      type:"POST",
	      data:{"coltura":coltura},
	      url:"addTrattamentoLv",
	      success : function(data){
	    	 var object= JSON.parse(data);
	    	 console.log(object);
	    	 $( "#nomeProdotto" ).append("<option >-------</option>");
	    	 for (var i = 0; i < object.length; i++) {
				 $( "#nomeProdotto" ).append("<option value='"+object[i].name +"'>"+object[i].name +"</option>");
			}
	    	}});
	 
	 
	 
	 
	 
 }
 function getNomeTrattamento(){
	 var nomeProdotto =  $("#nomeProdotto").val();
	 console.log(nomeProdotto);
	 getDose(0)
	 $("#superficie").keyup(function () {getDose(this);});
	 
	 
	 
	 
 } 
         
         
         
         
         
         
  function cercaColtura( el){
	
	 // var value=el.innerText;
	//  $("#nomeProdotto").val(value);
	 $("#coltura").html("");
	  
	     $.ajax({
		      type:"POST",
		     // data:{"nome":value},
		      url:"getColtura",
		      success : function(data){
		    	 var object= JSON.parse(data);
		    	 console.log(object);
		    	 for (var i = 0; i < object.length; i++) {
				
		    		 $( "#coltura" ).append("<option value='"+object[i].coltura +"'>"+object[i].coltura +"</option>");
				}
		    	
		      }
		});
	     set=true;
	    
	     $("#livesearch").hide();
  
  }
      
function deleteNome(){
	if(set===true){
		
		
		  $("#coltura").html("<option>------</option>");
		  set=false;
	}
	
	
	
}    

function getDose(el){
	
	var superficie  =  el.value;
	var nome = $("#nomeProdotto").val();
	if(el===0){
		
		superficie  = 0;
		$("#superficie").val(0.0)

	}else{
		superficie  =  el.value;

	}
	var coltura = $("#coltura").val();
	console.log(coltura)
    $.ajax({
	      type:"POST",
	      data:{"nome":nome,"coltura":coltura,"superficie":superficie},
	      url:"getDose",
	      success : function(data){
	    	 var object= JSON.parse(data);
	    	 console.log(object.dose);
	    	$("#quantita").val(object.dose); 
	    	console.log(object.avversita); 
	    	 $( "#avv" ).html("<option >---------------</option>");
	    	 for (var i = 0; i < object.avversita.length; i++) {
				 $( "#avv" ).append("<option value='"+object.avversita[i] +"'>"+object.avversita[i] +"</option>");
			}
	    	
	      }
	});
	
	
	
	
	
	
	
}

//Funzione per la check box
function visualizzaBottoni(el){
	var str= parseInt(el.value) 
	console.log(str)
          if($(el).is(":checked")){
              var buttons=document.getElementsByClassName('select-prodotto');
              for (i = 0; i < buttons.length; i++) {
                  buttons[i].disabled = true;
              }  
              var s= '.input-trattamento'+str;
       		  s.concat(el.value);
       		  console.log(s)
       		  $(s).prop("disabled", false); 
       	      $('.input-modifica'+el.value).prop("disabled", false); 
              $("#"+str).after('<tr  scope="row" class="bottoni" > <td colspan="9" class= "text-center"> <button onclick="showPop(this.id)" id="update" class="shadow buttone-modifica ">Conferma</button> <button  class="shadow   buttone-modifica" onclick="clickAnnulla()">Annulla</button>    <button class="shadow buttone-modifica" id="eliminaTrattamento" onClick="showPop(this.id)">Elimina il Trattamento</button></td><tr>')
 			 
 			 
        	  
          }
          else if($(el).is(":not(:checked)")){
        	  $('.bottoni').empty();
          }

	  
  
	
}

function soloNumeri(el){
	el.value=el.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');
}


function redirectDelega(idregistro,idUtente) 
{
	location.href = "showDelega?idRegistro="+idregistro+"&idUtente="+idUtente;
}
function addTrattamento(){
	var nome = $("#nomeProdotto").val();;
	var coltura= $("#coltura").val();;
	var data= $("#data").val();;
	var sup= $("#superficie").val();;
	var quantita= $("#quantita").val();
	var avv= $("#avv").val();;
	var note= $("#note").val();
	var id= $("#idregistro").val();
	console.log(nome+" "+ coltura+" " +" " +data +" "+sup+" "+id+" "+quantita+" "+avv+" "+note +" ");
	   
    $.ajax({
	      type:"POST",
	      data:{
	    	  "idregistro" : id,
	    	  "nomeProdotto":nome,
	    	  "coltura" : coltura,
	    	  "dataInizio" : data,
	    	  "quantita" : quantita,
	    	  "superficie" : sup,
	    	  "avversita" : avv,
	    	  "note" : note
	      },
	      url:"aggiungiTrattamento",
	      success : function(data){
	    	 var object= JSON.parse(data);
	    	   showPop(object.inserimento);
	    	 
	    	 
	    	 
	    	}});
	
	
	
	
	
	
	
	
}
function modificaTrattamento(){
//	var  items= document.getElementsByClassName('select-prodotto'); // elementi check-box
	var idTrattamento = 0; 

	var array = document.getElementsByTagName("input");


	for(var ii = 0; ii < array.length; ii++)
	{

	   if(array[ii].type == "checkbox")
	   {
	      if(array[ii].className == 'select-prodotto')
	       {
	       if( array[ii].checked){
	    	   
	    	  idTrattamento = array[ii].value;
	    	   
	       }

	       }


	   }
	}
	
	
	
//	var nome = $('#nomeProdotto'+idTrattamento).val();
	var nome = $("#nomeProdotto"+idTrattamento).val();;
	var coltura= $("#coltura"+idTrattamento).val();;
	var data= $("#data"+idTrattamento).val();;
	var sup= $("#sup"+idTrattamento).val();;
	var quantita= $("#quantita"+idTrattamento).val();
	var avv= $("#avv"+idTrattamento).val();;
	var note= $("#note"+idTrattamento).val();
	var id= $("#idregistro").val();
	console.log(nome+" "+ coltura+" " +" " +data +" "+sup+" "+id+" "+quantita+" "+avv+" "+note +" ");
	   jQuery.noConflict();
    $.ajax({
	      type:"POST",
	      data:{
	    	  "idtrattamento" : idTrattamento,
	    	  "idregistro" : id,
	    	  "nomeProdotto":nome,
	    	  "coltura" : coltura,
	    	  "dataInizio" : data,
	    	  "quantita" : quantita,
	    	  "superficie" : sup,
	    	  "avversita" : avv,
	    	  "note" : note
	      },
	      url:"modificaTrattamento",
	      success : function(data){
	    	 var object= JSON.parse(data);
	    	   showPop(object.inserimento);
	    	 
	    	}});
	
	
}
function eliminaRegistro(){
	//
		   jQuery.noConflict();

	  $.ajax({
	      type:"POST",
	      url:"eliminaRegistro",
	      success : function(data){
	    	 var object= JSON.parse(data);
	    	   showPop(object.eliminazione);
	    	}});
	
	
	
	
}
function eliminaTrattamento(){
	//
		var idTrattamento = 0; 

	var array = document.getElementsByTagName("input");


	for(var ii = 0; ii < array.length; ii++)
	{

	   if(array[ii].type == "checkbox")
	   {
	      if(array[ii].className == 'select-prodotto')
	       {
	       if( array[ii].checked){
	    	   
	    	  idTrattamento = array[ii].value;
	    	   
	       }

	       }


	   }
	}
		   jQuery.noConflict();
		
	  $.ajax({
	      type:"POST",
	      data:{"idtrattamento": idTrattamento},
	      url:"EliminaTrattamento",
	      success : function(data){
	    	 var object= JSON.parse(data);
	    	   showPop(object.eliminazione);
	    	}});
	
	
	
	
}
function creaRegistro(){
	//
		   jQuery.noConflict();
			var id= $("#idregistro").val();
	  $.ajax({
	      type:"POST",
	      data:{"idregistro": id},
	      url:"creaRegistro",
	      success : function(data){
	    	 var object= JSON.parse(data);
	    	   showPop(object.creazione);
	    	}});
	
	
	
	
}
function showPop(str){
 	
	//$(".pop-up-delega").show();
	document.getElementById('delega-pop-up').style.display='flex'
		if(str=="aggiungi"){
			
			document.getElementById('titolo-pop-up').innerText="Conferma"
			document.getElementById('pop-text').innerText="Sei sicuro di voler aggiungere il trattamento?"
				document.getElementById('bottone-popu-conferma').setAttribute("onclick","addTrattamento()");

	 	}else if(str=="update"){
	 		document.getElementById('titolo-pop-up').innerText="Conferma"	
			document.getElementById('pop-text').innerText="Sei sicuro di voler modificare il trattamento?"
	 		
				document.getElementById('bottone-popu-conferma').setAttribute("onclick","modificaTrattamento()");
			 		
	 	}else if(str=="elimina-registro"){
	 		document.getElementById('titolo-pop-up').innerText="Conferma"	
			document.getElementById('pop-text').innerText="Sei sicuro di voler eliminare il registro?"
					
				document.getElementById('bottone-popu-conferma').setAttribute("onclick","eliminaRegistro()");

	 	}else if(str=="crea-registro"){
	 		document.getElementById('titolo-pop-up').innerText="Conferma"	
				document.getElementById('pop-text').innerText="Sei sicuro di voler creare un nuovo registro?"
					document.getElementById('bottone-popu-conferma').setAttribute("onclick","creaRegistro()");

		}else  if(str=="true"){
			
			document.getElementById('titolo-pop-up').innerText="Operzione Effettuata";
		    document.getElementById('pop-text').innerText="Operazione effettuata con successo!";
			$('.bottoni-pop-up').hide();
					window.setTimeout("ricaricaPagina()", 2000);
			}else if(str=="false"){
				
				document.getElementById('titolo-pop-up').innerText="Operzione non Effettuata";
			    document.getElementById('pop-text').innerText="Non è stato è possibile effettuare l'operazione!";
				$('.bottoni-pop-up').hide();
				window.setTimeout("ricaricaPagina()", 2000);

				
			}else if(str=="eliminaTrattamento"){
				//eliminaTrattamento()
				document.getElementById('titolo-pop-up').innerText="Conferma"	
				document.getElementById('pop-text').innerText="Sei sicuro di voler eliminare il registro?"
				document.getElementById('bottone-popu-conferma').setAttribute("onclick","eliminaTrattamento()");


				
			}else if(str=="approva"){
				//eliminaTrattamento()
				document.getElementById('titolo-pop-up').innerText="Conferma"	
				document.getElementById('pop-text').innerText="Sei sicuro di voler approvare le modifiche?"
				document.getElementById('bottone-popu-conferma').setAttribute("onclick","showPop('true')");


				
			}

	}
	
function ricaricaPagina(){
	
    location.reload();

	
}	
	
	
function sonoPremuto(){
	
	console.log("sono premuto ")
	
	
}



</script>      
      
<%@ include file="footer.jsp"%>

</body>
</html>