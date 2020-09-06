<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/stylesheet.css">
<meta charset="ISO-8859-1">
<title>Agricol�rio - Chi siamo</title>

</head>
<body>
<%@ include file="navbar.jsp"%>
<div class="header picture" style="background-image:linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)),url('image/chisiamosfondo.jpg')">
<h2 class="title">,CHI SIAMO</h2>
<h5><br>Agricol�rio nasce dall'idea di realizzare un sistema adatto alla compilazione di un <b><i>registro fitosanitario</i></b></h5>
<h5><b>innovativo</b>, <b>moderno</b>, <b>dinamico</b> e, sopra ogni cosa,
			<b>alla portata di tutti</b>.</h5>
<h5>Il team di progettisti � composto da appassionati di informatica,
			aspiranti web developer, studenti a tempo pieno, </h5>
<h5>ponendosi sempre l'obiettivo di sviluppare prodotti <b>user-friendly</b>.</h5>
</div>

<br><br>
<div align="center">
<h5 style="padding-bottom:30px">I membri del Team:</h5>
</div>

<div class="container">
  <div class="row row-cols-1 row-cols-md-3">
   <div class="col mb-4">
    <div class="card shadow h-100">
    <img class="card-img-top rounded-circle img-fluid" src="image/ciro.png" alt="Card image" style="width:100%">
      <div class="card-body text-center">
      	<h4 class="titoloParagrafo">Ciro Falciano</h4>
        <p class="corpoParagrafo">Programmatore & UX designer.</p>
      </div>
    </div>
    </div>
    <div class="col mb-4">
    <div class="card shadow h-100">
    <img class="card-img-top rounded-circle img-fluid" src="image/giulio.png" alt="Card image" style="width:100%">
      <div class="card-body text-center">
       	<h4 class="titoloParagrafo">Giulio Cocina</h4>
       	<p class="corpoParagrafo">Programmatore e UI designer.</p>
      </div>
    </div>
    </div>
  </div>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>
