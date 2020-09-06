<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/navbar.css">
<title>Agricolàrio - Delega</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<style type="text/css">

body{
	   font-family: "Dosis";
	src: url("../font/Dosis/AnyConv.com__Dosis-Regular.otf");
	} 
	
#blocco-delega> h2 {
text-align: center;

}


#titoloDelega{
font-size: 28px;

}

.delega {
	display: grid;
	grid-template-columns: 40%;
	justify-content: center;
	grid-Column-gap: 5%;
}

.delega > .form-delega > *{

font-size: 15px;
 position: relative;
color:white;  
font-weight: bold;
}
.delega > .form-delega > input[type="text"]{
border-bottom:solid 1px white;

}
.delega > .form-delega > input[type="text"]:focus{
border-bottom:solid 1px white;
    outline: none;
font-size: 20px;
}
.form-delega > h2{
text-align: center;

}

.form-delega {
	color: white;
	padding: 10% 10% 10% 10%;
	background: url(https://www.tuttogreen.it/wp-content/uploads/2015/07/shutterstock_524805052-700x468.jpg)no-repeat center;
	position: relative;
	height: 100vh;
	margin-bottom: 100px;
	/* padding-bottom: 150px; */
}

.form-delega:before{
     content: '';
    position: absolute;
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    background: rgba(0,100,50,0.4);


}
#bottone-delega{
	/* width: 40%; */
	/* color: white; */
	/* margin: auto; */
	/* box-sizing: border-box; */
  cursor: pointer; 
	/* position: relative; */
	/* height: 40px; */
	height: 12%;
	width: 40%;
	background-color: #23a9d8;
	color: white;
	font-weight: normal;
	border: none;
	text-align: center;
	border-radius: 5px;
	font-size: 22px;
	/* padding: ; */
	margin: 5px;
}
    
 #bottone-delega:hover{
 background-color: RoyalBlue;
 }

::placeholder {
  color:  rgba(255,255,255,0.8);
}

/*POP UP CONFERMA*/
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


#titolo-pop-up{
font-size: 28px;
font-weight: bold; 
 margin: auto;
 width: 50%;
}

#pop-text {
	font-size: 18px;
	/* margin: auto; */
	/* width: 80%; */
	margin-left: 50px;
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


</style>

</head>
<body>
<%@ include file="navbar.jsp"%>




<%@ include file="navbarLaterl.jsp"%>


<div class="pop-up-delega">
 
 <div style="background-color: white;height: 50px; width: 150px; margin auto;">
 
 
 </div>
 
 </div>   

<div style="height: 500px;" class="mt-5">
  <form method="post">
  <div class="delega">
  <!-- Delegato -->
 <% 
     String idreg =(String)request.getAttribute("idRegistro"); 
     Utente user =(Utente) session.getAttribute("user");
    
 
 
 %>
 
 <input type="hidden" name="idRegistro" id="registro" value="<%=idreg%>">

  <div style=" width:100%; height: 80%" class="form-delega">
  		<p  id="titoloDelega" class="text-center"> Delega</p>
  		<br>
   <span style="font-size: 20px;" >Email</span>:<input type="text" id="email" class="input-delega" name="email" value="" placeholder="Email del delegato" list="email_list" onblur="myFunction()"><br>
   <span style="font-size: 20px;" for="fname">Nome:</span><input type="text" id="nome" class="input-delega" name="nome" value="" ><br>
   <span style="font-size: 20px;" for="fname">Cognome:</span><input type="text" id="cognome" class="input-delega" name="cognome" value=""><br><br>
   <input type="button" id="bottone-delega" class="colore-bottoni" value="delega" style="margin-left: 15%" onclick="showPop(this.id)"> </input>
   <input type="button" id="bottone-delega" class="colore-bottoni" value="Indietro" onclick="history.go(-1)"> </input>
	 
  </div>
  </div>
<div class="contenitore-delega" id="delega-pop-up">
		 <div id="blocco-delega" class="animazione-login">
		     <span class ="close-delegato" style="color: black"><i class=" fa fa-close" onclick="document.getElementById('delega-pop-up').style.display='none'"></i></span>
		    <p  id="titolo-pop-up" class="text-center">Conferma delega</p>
		    <div >
		    
		    <p id="pop-text">Sei sicuro di voler delgare il seguente utente?</p>
		     </div>
		  
		   
		    <div class="bottoni-pop-up" >
		      <input type="button" class="colore-bottoni"   onclick="opDelega()" id="bottone-popu-conferma"  value="Conferma">
		 		 <input type="button" id="annullaBottone" value="Annulla" onclick="document.getElementById('delega-pop-up').style.display='none'" class="colore-bottoni">
		     </div>
		
		    </div>
		           
		 
 </div>
</form>
   


<datalist id="email_list">


</datalist>


</div>

<script type="text/javascript">
jQuery.noConflict();
$("#email").keyup(function() {
	console.log("sono chioamsdf")
	$("#email_list").html(" ");
	$.ajax({
		 type:"POST",
		 data:{"email":this.value},
		 url:"emailDelegato",
		 success : function(data){
			 var object= JSON.parse(data);
			 console.log(object);
			 for (var i = 0; i < object.length; i++) {
				
				
				 $("#email_list").append("<option value='"+object[i].email+"'onclick='alert()'>"+ object[i].name +" " + object[i].cognome+"</option>");
				
			 }
			 
			 
			}});
	
	
	function setNC(nome,cognome){
		console.log("sono chiamata ")
		
		
		
	}




	
});

function myFunction(){
	
	console.log("ok");
	var email= $("#email").val();
	console.log(email);
	$.ajax({
		 type:"POST",
		 data:{"email":email},
		 url:"emailDelegato",
		 success : function(data){
			 var object= JSON.parse(data);
			 console.log(object);
			$("#nome").val(object[0].name);
			$("#cognome").val(object[0].cognome);
		    
		 
			 
			 
			}});
	
}
function showPop(str){

    console.log(str.value)
    document.getElementById('delega-pop-up').style.display='flex'
  if(str=="true"){
		
		document.getElementById('titolo-pop-up').innerText="Operzione Effettuata";
	    document.getElementById('pop-text').innerText="Operazione effettuata con successo!";
		$('.bottoni-pop-up').hide();
				window.setTimeout("redirectRegistro()", 2000);
		}else if(str=="false"){
			
			document.getElementById('titolo-pop-up').innerText="Operzione non Effettuata";
		    document.getElementById('pop-text').innerText="Non è stato è possibile effettuare l'operazione!";
			$('.bottoni-pop-up').hide();
			window.setTimeout("redirectRegistro()", 2000);

			
		}
}
function redirectRegistro() 
{
	location.href = "showRegistro";
}
function opDelega(){
	
	var email= $("#email").val();
	var idregistro = $("#registro").val();
	console.log(email);
	$.ajax({
		 type:"POST",
		 data:{"email":email,
				"idregistro": idregistro	 
		 },
		 url:"delegaRegistro",
		 success : function(data){
			 var object= JSON.parse(data);
			 console.log(object);
			showPop(object.delega)
		    
		 
			 
			 
			}});
	
	
}

</script>


 






<%@ include file="footer.jsp"%>

</body>
</html>