<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agricolàrio - Registrazione Effettuata</title>
</head>
<body>
<%@ include file="navbar.jsp" %>
<div style="min-height: 30em; padding-top: 3em;" class  ="home">

<script type="text/javascript">
	
function redirect(){
		location.href = "showHome";
	}
		window.setTimeout("redirect()", 3000);
</script>

<div id="home">

<div class="alert alert-success" role="alert" style="text-align: center; padding: 2%; margin: 5%">
	<h1 class="alert-heading">Registrazione effettuata!</h1>
	<p class="mb-0">Tra un momento sarai reindirizzato nella Home Page</p></div>
	</div>
			
			
	</div>

</div>

<%@ include file="footer.jsp"%>
</body>
</html>