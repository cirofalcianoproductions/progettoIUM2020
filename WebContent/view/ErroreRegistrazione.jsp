<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agricolàrio - Errore Registrazione</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="navbar.jsp" %>
<div style="min-height: 30em; padding-top: 3em;" class  ="home">
<script type="text/javascript">
	
function redirect() 
	{
		location.href = "showRegistrazione";
	}
		window.setTimeout("redirect()", 3000);
		</script>


<div id="home">

<div class="alert alert-warning" role="alert" style="text-align: center; padding: 2%; margin: 5%">
	<h1 class="alert-heading">Errore!</h1>
	<p style="margin-bottom: 0.5em;" class="mb-0">Fra pochi secondi, sarai reindirizzato alla <a href="showRegistrazione">Registrazione</a>!</p>
	<h4>Clicca su <a href="showRegistrazione">Registrazione</a> se non dovesse accadere in automatico.</h4>
	</div>
			
			
	</div>

</div>

<%@ include file="footer.jsp"%>
</body>
</html>

</body>
</html>