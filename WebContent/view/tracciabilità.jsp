<%@page import="java.util.ArrayList"%>
<%@page import="com.agricolario.bean.RegistroFitosanitario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/navbar.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">	
<script src="https://kit.fontawesome.com/yourcode.js"></script>
<script type="text/javascript" src="js/qrcode.js"></script>

<script src="https://kit.fontawesome.com/yourcode.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"
  />
  
  <style>
  	body{
	   font-family: "Dosis";
	src: url("../font/Dosis/AnyConv.com__Dosis-Regular.otf");
	}
  
  
 #informazioni {
	font-size: 22px;
	height: 250px;
}
  
#qrcode {
	z-index: 999999999999999999999;
	margin: auto;
	width: 25%;
	margin-bottom: 5px;
}


#qrcode img {
	z-index: 999999999999999999999;
	width: 155px;
	height: 155px;
}

  </style>
  
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="ISO-8859-1">
<title> Agricolàrio - Tracciabilità </title>
</head>
<body>

<%@ include file="navbar.jsp"%>

<%@ include file="navbarLaterl.jsp"%>

<div class="container-fluid  ">


<div class="titles">
<div  class="titoloPaginaReg ">
  <p id="titoloPaginaReg" class="text-center">  ,Tracciabilità</p>
</div>
<div class="sottoTitoloReg" class="text-center">
  <p  id="sottoTitoloReg" class="text-center" class="w3-large">Crea, in modo facile e veloce, l'etichetta virtuale per le tue coltivazioni. </p>
</div>  
<div  class="iconHelp "> 	
   	<div class="pnd-pulse">								
    <span class="pnd-pulse-dot">?</span>
    <span class="pnd-pulse-ring"></span>
    <div class=" description">
       <p class="pnd-pulse-text"> 
         La sezione presenta 3 step eseguiti in modo progressivo. </p>
         <ul class="pnd-pulse-text">
          <li> Nel primo step bisogna scegliere l'anno di coltivazione e la coltura per cui si intende creare l'etichetta virtuale</li>
          <li> Nel secondo step è possibile visualizzare visualizzare e/o modificare le informazioni riguardanti tutti i prodotti utilizzati sulla coltura</li>
          <li> Nel terzo step è possibile generare e/o stamapare il Qr Code rappresentativo dell'etichetta virtuale</li>
         </ul>
        
         <p class="pnd-pulse-text"> 
         Per altre informazioni più dettagliate consultare la pagina <a href="showFunzionalita?funzionalita=comefunziona"> Come Funziona</a>,alla sezione  <a href="http://localhost/IUM/showFunzionalita?funzionalita=comefunziona#sezTracc">Tracciabilità</a> oppure contattare l'assistenza <a href="http://localhost/IUM/showFunzionalita?funzionalita=assistenza">qui </a>.   </p>
   </div>	
    </div>
</div>
</div> 
<%ArrayList<RegistroFitosanitario> listaReg = (ArrayList<RegistroFitosanitario>)request.getAttribute("listaRegistro");%>

<div class="divS"> <!-- DIV SUPREMO -->
<div id="employer-post-new-job">
	<div class="container">
	    <div class="stepBar">
			<div class="col-xs-10 col-xs-offset-1" id="container">
								<div class="res-steps-container">
									<div class="res-steps res-step-one active" data-class=".res-form-one">
										<div class="res-step-bar">1</div>
										<div class="res-progress-bar"></div>
										<div class="res-progress-title">Scegli un prodotto</div>
									</div>
									<div class="res-steps res-step-two" data-class=".res-form-two">
										<div class="res-step-bar">2</div>
										<div class="res-progress-bar"></div>
										<div class="res-progress-title">Informazioni</div>
									</div>
									<div class="res-steps res-step-three" data-class=".res-form-three">
										<div class="res-step-bar">3</div>
										<div class=""></div>
										<div class="res-progress-title">Stampa o Genera</div>
									</div>
								
								</div>
			</div>
			
	<!-- 1° PAGINA -->	
			<div class="res-step-form col-md-8 col-md-offset-2 res-form-one" style="left:0%;">
									<form class="form-horizontal">
									  
									  <div class="areaInfo form-group">
										  		
										<div class="col col-lg-12 text-center ">
											<p class="sceltaTit2" >Anno di Coltivazione:</p>
										</div>
										
										<div class="col col-lg-12 text-center mt-3 ">
											 <select class="custom-select col col-lg-9" id="selezioneRegistro" onchange="registroScelto()">
  				   								 <option selected>...</option>
  				    							<% for(RegistroFitosanitario reg : listaReg ){  %>
  				      				    		<option value="<%=reg.getIdRegistroFitosanitario()%>"><%=reg.getDataCreazione().getYear()+1900 %></option>
  				    							<%} %>
    			   							 </select>
    			   							 
											<p class="sceltaTit2" >Coltura di cui creare l'etichetta:</p>
											<select class="custom-select col col-lg-9" id="trattamento"  onchange="trattamentoScelto()">
								  				 <option selected>...</option>    
								  			 </select>
										</div>
								</div>
								<div class="form-group">
									  <div class="text-center">
												<button type="button" class="botton btnGo1   col-xs-offset-1 btn botton-orange" data-class=".res-form-one">Avanti</button>
									   </div>
									  </div>
									</form>
			</div>
	<!-- 2° PAGINA -->			
			<div class="res-step-form col-md-8 col-md-offset-2 res-form-two">
									<form class="form-horizontal">
									  <div class="form-group">
										<div class="areaInfo col col-lg-12" >
											<div class="col col-lg-12 text-center ">
												<p class="sceltaTit2" >Informazioni sul prodotto: </p>
											</div>
											<div class="form-group textarea" >
									  			<textarea class="form-control z-depth-1  " id="informazioni" rows="7"></textarea>
									  		<h7 style="color: red; font-weight: bold">NOTA BENE: </h7>	<h7 style="font-weight: bold">In questo campo, le informazioni autogenerate si possono modificare e/o aggiungere dettagli a proprio piacimento. </h7>
											</div>
											
										</div>								    
									  </div>
									 
									  
									  <div class="goBack form-group">
									    <div class="goBack text-center">
												<button type="button" class="botton btnBack botton   btn botton-gray" data-class=".res-form-two">Indietro</button>
												<button type="button" class="botton btnGo   col-xs-offset-1 btn botton-orange" data-class=".res-form-two">Avanti</button>
									    </div>
									  </div>
									</form>
				</div>
								
<!-- 3° PAGINA -->	
				<div class="res-step-form col-md-8 col-md-offset-2 res-form-three">
				<form class="form-horizontal" onsubmit="false">
									<div class="areaInfo col col-lg-12" >
											<div class="col col-lg-12 text-center ">
												<p class="sceltaTit2" > Stampa o Genera <br> la tua etichetta</p>
											</div>
									
									  <div class="form-group">
									    <div class="botton3 text-center">
												<button type="button" class="botton btnStampa">Stampa</button>
												<button type="button" class="btnPunto botton"  id="generaQR" onclick="generaqr()">Genera qr</button>
									    </div>
									  </div>
									<div class="text-center" id="qrcode">
											
									</div>
									<div class="form-group">
									    <div class="botton3 text-center">
											    <button type="button" class="botton btnBack btn botton-gray" data-class=".res-form-three">Indietro</button>           
												<button type="button" class="botton btnPunto btn botton-gray" data-class=".res-form-two" onclick="location.reload();">Vai al punto 1</button>
									    </div>
									  </div>
								</div>

					</form>			
				</div>
	        </div>
	    </div>
	</div>
</div>
</div>
<!-- SCRIPT DELLO SCORRIMENTO STEP BAR -->
<script type="text/javascript">
$(document).ready(function(){
	var steps = ['.res-step-one','.res-step-two','.res-step-three','.res-step-four'];
		var i = 1;
		$(".res-step-form .botton-orange").click(function(){
			var getClass = $(this).attr('data-class');
			$(".res-steps").removeClass('active');
			$(steps[i]).addClass('active');
			i++;
			if(getClass != ".res-form-four"){
				$(getClass).animate({
					left: '-150%'
				}, 500, function(){
					$(getClass).css('left', '150%');
				});
				$(getClass).next().animate({
					left: '0%'
				}, 500, function(){
					$(this).css('display','block');
				});
			}
		});

		/* step back */
		$(".res-step-form .botton-gray").click(function(){
			var getClass = $(this).attr('data-class');
			$(".res-steps").removeClass('active');
			i--;
			$(steps[i-1]).addClass('active');
			$(getClass).prev().css('left','-150%')
			$(getClass).animate({
				left: '150%'
			}, 500);
			$(getClass).prev().animate({
				left: '0%'
			}, 500)
		});

		/* click from top bar steps */
		$('.res-step-one').click(function(){
			if(!$(this).hasClass('active')){
				$(".res-steps").removeClass('active');
				i = 0;
				$(steps[i]).addClass('active');
				i++;
				$('.res-form-one').css('left','-150%');
				$('.res-form-two, .res-form-three, .res-form-four').animate({
					left: '150%'
				}, 500);
				$('.res-form-one').animate({
					left: '0%'
				}, 500);
			}
		});

		$('.res-step-two').click(function(){
			if(!$(this).hasClass('active')){
				$(".res-steps").removeClass('active');
				i = 1;
				$(steps[i]).addClass('active');
				i++;
				$('.res-form-two').css('left','-150%');
				$('.res-form-one, .res-form-three, .res-form-four').animate({
					left: '150%'
				}, 500);
				$('.res-form-two').animate({
					left: '0%'
				}, 500);
			}
		});

		$('.res-step-three').click(function(){
			if(!$(this).hasClass('active')){
				$(".res-steps").removeClass('active');
				i = 2;
				$(steps[i]).addClass('active');
				i++;
				$('.res-form-three').css('left','-150%');
				$('.res-form-one, .res-form-two, .res-form-four').animate({
					left: '150%'
				}, 500);
				$('.res-form-three').animate({
					left: '0%'
				}, 500);
			}
		});

		$('.res-step-four').click(function(){
			if(!$(this).hasClass('active')){
				$(".res-steps").removeClass('active');
				i = 3;
				$(steps[i]).addClass('active');
				i++;
				$('.res-form-four').css('left','-150%');
				$('.res-form-one, .res-form-two, .res-form-three').animate({
					left: '150%'
				}, 500);
				$('.res-form-four').animate({
					left: '0%'
				}, 500);
			}
		});
	});
</script>




<!-- SCRIPT DELLE ALTRE COSE -->
<script >
function registroScelto() {
    //Getting Value
    
    // METHOD 1
    var selValue = document.getElementById("selezioneRegistro").value;
    
    //METHOD 2
    var selObj = document.getElementById("selezioneRegistro");
    var selValue = selObj.options[selObj.selectedIndex].value;
    console.log(selValue)
    //Setting Value
    $.ajax({
	      type:"POST",
	      data:{
	    	  "id" : selValue
	      },
	      url:"ottieniTrattamento",
	      success : function(data){
	    	 var object= JSON.parse(data);
	    	 $( "#trattamento" ).html("<option select>...</option>");
	 		
	    	 for (var i = 0; i < object.length; i++) {
					
	    		 $( "#trattamento" ).append("<option value= " +object[i].id +">"+ "(" + object[i].id + ")"+  " Nome Coltura: " + object[i].coltura );
			}
	    	
	      }	    	 
	    	 
	    	 
	    	});
}

function trattamentoScelto() {
    //Getting Value
    
    // METHOD 1
    var selValue = document.getElementById("trattamento").value;
    
    //METHOD 2
    var selObj = document.getElementById("trattamento");
    var selValue = selObj.options[selObj.selectedIndex].value;
    console.log(selValue)
    	    	 $("#informazioni").html("");

    //Setting Value
    $.ajax({
	      type:"POST",
	      data:{
	    	  "id" : selValue
	      },
	      url:"getTrattamento",
	      success : function(data){
	    	 var object= JSON.parse(data);
	    	 $("#informazioni").html("");
	 
				
	    		$("#informazioni").append("Sulla coltura " + object.coltura + " è stato effettuato il trattamento" + " '"+ object.nome + "' "+ 
	    			"per combattere l'avversità: " + object.avversita + ".\n" + "Il trattamento è stato eseguito in data " + object.data + 
	    			" su una superficie totale di " + object.superficie + " metri quadrati. " + "\n" +
	    			"La quantità utilizzata per effettuare il trattamento ammonta a " + object.quantita + " litri per superficie impiegata.\n");

	      }	    	 
	    	 
	    	 
	    	});
}







function generaqr(){
    console.log("Click")
	jQuery.noConflict();
	
	/*$.get("operazioneTracciabilita", function(data, status){
	    alert("Data: " + data + "\nStatus: " + status);
	  });
*/
	  var informazioni ="";
	  informazioni = document.getElementById("informazioni").value;

	
	 document.getElementById("qrcode").innerHTML = "";
	
	new QRCode(document.getElementById("qrcode"), {
		text: informazioni, 
		width: 180,
		height: 180,
		colorDark : "black",
		colorLight : "#ffffff",
		correctLevel : QRCode.CorrectLevel.H
	});

      
}

</script>





<%@ include file="footer.jsp"%>

</body>
</html>