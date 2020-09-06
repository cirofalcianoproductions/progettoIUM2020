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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/yourcode.js"></script>

<script src="https://kit.fontawesome.com/yourcode.js"></script>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />


<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Agricolàrio - Registrazione</title>
</head>

<style>

body{
	   font-family: "Dosis";
	src: url("../font/Dosis/AnyConv.com__Dosis-Regular.otf");
	} 
	
.hr {
	height: 2px;
	margin: 60px 0 50px 0;
	background: rgba(255,255,255,.2);
}

.foot-lnk {
    text-align: center;
}

.titRegistrazione {
	font-size: 35px;
	color: white;
	width: 100%;
}

.containerReg{
background: rgba(0,100,50,0.4);
}

/* Caselle di input */

input[type="text"], input[type="password"] {
	width: 100%;
	/* margin: 16px; */
	display: inline-block;
	border: none;
	box-sizing: border-box;
	background: transparent;
	border-bottom: 1px solid rgba(255,255,255,.3);
	color: white;
	margin-top: 15px;
	margin-bottom: 15px;
}


#text, #psw{
	margin-top: 36px;
}	

input[type=text]:focus, input[type=password]:focus{
	-webkit-transition: 0.2s;
 	 transition: 0.2s;
 	 border-bottom: 2px solid white;
 	 
}

/* Checkbox di 'Ricordami' quando cliccata */
input[type="checkbox"] {
	box-sizing: border-box;
	padding: 0;
	color:white;
}

/* Checkbox disposizione */
.checkbox{
display: inline-block;
}


/* Cambia forma il puntatore quando passi sulla checkbox*/
.form-check-input:hover{
	cursor: pointer;
}

/*Grandezza di ricordami*/
.white-text{
	font-size: 20px;
}


.registration {
	width:100%;
	margin:auto;
	max-width:600px;
	min-height:700px;
	position:relative;
	background:url(https://static.winenews.it/2019/01/AgricolturaItalia.jpg) no-repeat center;
	box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
	
}

.contenitoreReg {
	position: absolute;
	width:100%;
	height:100%;
	background:rgba(30,105,50,.7);
	padding:50px 5px 10px 5px;
}

.etichette{
	font-weight: bold;
    font-size: 1.2em;
	color: white;
	padding: 0;
}

.etichettaAcconsento{
	font-size: 1em;
	color: white;
	padding: 0;
}

.bottoneReg{ /*non so come si fa a far cambiare colore quando un pulsante è disabilitato e quando non */
	background: #1161ee;
    padding: 15px 20px;
    border-radius: 25px;
    width: 60%;
	color: white;
	margin:auto;
    text-transform: uppercase;
    box-sizing: border-box;
    cursor: pointer;
	position: relative;
	border:none;
	margin-top: 20px;
}


.bottoneReg2{ 
	background: #1161ee;
    padding: 15px 20px;
    border-radius: 25px;
    width: 60%;
	color: white;
	margin:auto;
    text-transform: uppercase;
    box-sizing: border-box;
    cursor: pointer;
	position: relative;
	border:none;
	margin-top: 50px;
}

 input[type=date] {
	width: 100%;
	margin: 0px 0 0px 0;
	display: inline-block;
	border: none;
	box-sizing: border-box;
	background: transparent;
	border-bottom: 1px solid rgba(255,255,255,.3);
	color:white; 

  	
}

.select{
	width: 100%;
	margin-top: 6px;;
	display: inline-block;
	border: none;
	box-sizing: border-box;
	background: transparent;
	border-bottom: 1px solid rgba(255,255,255,.3);
	color:white; 
}

option{
	opacity: 0.7;
}

input[type=date]:focus, .select:focus{
	-webkit-transition: 0.2s;
 	 transition: 0.2s;
 	 border-bottom: 2px solid white;
 	 
}


.riga {
    height: 2px;
   margin-top: 30px;
   margin-left: 100px;
   margin-right: 100px;
    background: rgba(255,255,255,.2);
}

.scritta{
	text-align: center;
	margin-top: 20px;
}

.registration{
	animation: fadeInRight;
	animation-duration: 2s;

}

/*#utente{
	animation: fadeInRight;
	animation-duration: 2s;
}*/


</style>


<body>
<%@ include file="navbar.jsp"%>

<div class=" mt-5">
  <div class="shadow registration" id="utente"  style="display: block; ">
    <div class="containerReg">
    	<h1 class="titRegistrazione text-center"><b> Registrati con la tua email</b></h1><br>
    	
		<div class="row justify-content-center "id="form-registrazione" >
		<div id="form-registrazione">
  					<div class="row justify-content-center">
    					<div class="col-4 form-group">
    						<label class="etichette">Nome</label>
      						<input type="text"  placeholder="Nome" name="nome"  id="nome" required="required" >
    					</div>
    					<div class="col-4 form-group">
    					<label class="etichette">Cognome</label>
      					<input type="text"  placeholder="Cognome" name="cognome" id="cognome"   required="required">
    					</div>
  					</div>
 
  					<div class="row justify-content-center">
  					   <div class="col-8 form-grupo">
  					   		<label  class="etichette">Email</label>
      						<input type="text"  placeholder="Email" name="email" id="email" required="required">
   					   </div>
  					</div>
  					
 					 <div class="row justify-content-center mt-3">
    					<div class="col-4 form-goup">
    						<label  class="etichette">Password</label>
      						<input type="password"  placeholder="Password" name="password" id="password" required>
    					</div>
    				 	<div class="col-4 form-group">
    				 		<label  class="etichette">Conferma Password</label>
      				 		<input type="password"  placeholder="Conferma Password" id="confirm_password"  required>
   					 	</div>
  					</div>	

   					<div class="row justify-content-center">
					    <div class="col-4">
					   	 <label  class="etichette">Data di nascita</label>
    						<input type="date" placeholder="dd mm yyyy" name="dataNascita" id="dn"    data-date-format="DD MM YYYY"  required="required">
    					</div>
    					
    				<div class="col-4 form-group">
     					<label  class="etichette">Ruolo</label>	
 							 <select class="select" id="ruolo" name="ruolo" required="required"> 
  								 <option selected>---</option>
    						     <option value="titolare">Titolare</option>
   							     <option value="delegato">Delegato</option>
 							 </select>
    				</div>
 				   </div>
 				   
   					<div class="row  justify-content-center">
   				    <div class="col-8">
 							<div class="form-group form-check">
    								<input type="checkbox" class="form-check-input" id="exampleCheck1"  >
    								<label class="etichettaAcconsento" class="form-check-label">Acconsento al trattamento dei miei dati, accetto i Termini di Servizio e la Politica della Privacy</label>
 							</div>    
  					</div>
  					</div>
  				
  					<div id="registrazione" class="row  justify-content-center">
   				    <button type="submit" class="bottoneReg" >Registrati</button>   
  					</div>
  
   				    	<div class= "riga" class="hr"></div>
							<div class="scritta" class="foot-lnk">
								<a style="color: white"> Torna alla </a> <a href="#" style="color: white; font-style: italic; font-weight: bold">Home Page.</a>
							</div>
    				
  
  	</div>   
  </div>
   </div>
  </div>
  <div class="shadow registration" id="azienda" >
  
	<div class="containerReg">
    	<h1 id="titRegistrazione" class="text-center titRegistrazione"><b> Registra la tua azienda</b></h1><br>
    	
			<div class="row justify-content-center "  id="form-registrazione" >
		 		<div  id="form-registrazione">		
		 				
  					<div class="row justify-content-center">
    					<div class="col-8 form-group">
    						<label  class="etichette">Nome azienda</label>
      						<input type="text"  placeholder="Nome Azienda" name="azienda" id="nomea" required="required">
    					</div>
    					
  					</div>
  					<div class="row justify-content-center">
  					   <div class="col-8">
  					   		<label  class="etichette">Email azienda</label>
      						<input type="text"  placeholder="Email Azienda" name="email" id="emaila"required="required">
   					   </div>
  					</div>
 					 <div class="row justify-content-center">
    					<div class="col-6">
    						<label  class="etichette">Indirizzo</label>
      						<input type="text"  placeholder="Indirizzo" name="indirizzo" id="indirizzo"required="required">
    					</div>
    					<div class="col-2">
    						<label  class="etichette">N°Civico</label>
      						<input type="text" placeholder="n°" name="numeroCivico" id="numero" required="required">
    					</div>
    				 	
    				 
  					</div>	
  					<div class="row justify-content-center " >
  						<div class="col-6">
  							<label  class="etichette">Città</label>
      				 		<input type="text"  placeholder="Città" name="citta" id="citta" required="required">
   					 	</div>
   					 	<div class="col-2">
   					 		<label  class="etichette">CAP</label>
      				 		<input type="text" placeholder="Cap" name=" cap" id="cap" required="required">
   					 	</div>
  					
  					
  					
  					</div>
   					<div class="row justify-content-center">
					    <div class="col-8 form-group">
					    	<label  class="etichette">Data Fondazione</label>
    						<input type="date" placeholder="Data Fondazione" name="dataFondazione" id="df" required="required">
    					</div>
    				
 				   </div>
   				
  					<div id="registrazione" class="row  justify-content-center">
   				    <button type="submit" class="bottoneReg" onclick="registrazioneTitolare()">Registrati</button>   
  					</div>
 	
 				
 					    	<div class= "riga" class="hr"></div>
							<div class="scritta foot-lnk">
							 <a href="#" style="color: white; font-style: italic; font-weight: bold" onclick="tornaIndietro()">Indietro</a>
							</div>
 					
		</div>
	</div>
  </div>
  </div>
  
  
  
  
  


</div>
<script >
$("#azienda").hide();
function tornaIndietro(){
	
	$("#azienda").hide();
	$("#utente").show();
	
}

$( "#ruolo").on('change', function () {
	  //ways to retrieve selected option and text outside handler
	  if(this.value=='titolare'){
    $("#registrazione").html('<button class="bottoneReg" type="button" id="bottone-registrazione">Avanti</button>  ');
	  }else{
		    $("#registrazione").html('<button class="bottoneReg" type="submit" id="bottone-avanti" onclick="registrazioneDelegato()">Registrati</button>  ');
		  
	  }
	  });
$("#form-registrazione").on("click","#bottone-registrazione",function(){
	$("#utente").css("animation","fadeOutLeft");
	$("#utente").css("animation-duration","2s");

setTimeout(function(){ 
	$("#utente").hide();
 }, 1000);
setTimeout(function(){ 
	$("#azienda").show();
 }, 1000);

		
	
	
} );
		

var password = document.getElementById("password");
var confirm_password = document.getElementById("confirm_password");

function validatePassword(){
if(password.value != confirm_password.value) {
	console.log("password non valida");
    confirm_password.setCustomValidity("La password non corrisponde");
    $("#confirm_password,#password").css("border-bottom-color","red");
} else {
  confirm_password.setCustomValidity('');
  $("#confirm_password,#password").css("border-bottom-color","green");

} 
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;

function registrazioneDelegato(){
	

	
	  $.ajax({
	      type:"POST",
	      data:{
	    "nome":$("#nome").val(),
	  	"cognome":$("#cognome").val(),
	  	"email":$("#email").val(),
	  	"password":$("#password").val(),
	  	"dataNascita":$("#dn").val(),
		"ruolo":$("#ruolo").val()
		 },
	      url:"registrazione",
	      success : function(data){
	    	 var object= JSON.parse(data);
	    	 
	    	 console.log(object);
	    	
	    	 if(object.reg=="true"){
					location.href = "showPagine?valore=true";
					
				}else{
					
					location.href = "showPagine?valore=false";
					
						
				}
	    	 
	    	 
	    	 
	    	}});
}

function registrazioneTitolare(){
	

	
	  $.ajax({
	      type:"POST",
	      data:{
	    "nome":$("#nome").val(),
	  	"cognome":$("#cognome").val(),
	  	"email":$("#email").val(),
	  	"password":$("#password").val(),
	  	"dataNascita":$("#dn").val(),
		"ruolo":$("#ruolo").val(),
		"azienda":$("#nomea").val(),
	  	"cap":$("#cap").val(),
	  	"indirizzo":$("#indirizzo").val(),
	  	"città":$("#citta").val(),
	  	"dataFondazione":$("#df").val()		 },
	      url:"registrazione",
	      success : function(data){
	    	 var object= JSON.parse(data);
	    	 
	    	 console.log(object);
	    	  	
				if(object.reg=="true"){
					location.href = "showPagine?valore=true";
					
				}else{
					
					location.href = "showPagine?valore=false";
					
						
				}
		    	 
	    	 
	    	}});
}




</script>			
  					
	
		
<br>
<%@ include file="footer.jsp"%>

</body>
</html>