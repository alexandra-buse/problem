<!DOCTYPE html>
<?php
// Include the database configuration file
include 'dbConfig.php';

// Get images from the database

?>
<html lang="en">
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Conference</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/offcanvas/">

    <!-- Bootstrap core CSS -->
<link href="./assets/dist/css/bootstrap.min.css" rel="stylesheet">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<style> 

.border_question{
	border-radius: 25px;
  border: 3px solid BlueViolet ;
}


	
.container{

	padding:130px;
	border-radius: 25px;
    border: 3px solid LightSteelBlue;
	width:600px;
	height:400px;
	background-image: url("https://mir-s3-cdn-cf.behance.net/project_modules/disp/c8795532318437.567a06124c9da.gif");
    background-repeat: repeat;
}

h1{
  font-family: "Brush Script MT", "Brush Script Std", cursive;
  color : black;
  text-align: center;
  font-size: 65px;
  transition: color 1s;
}
h1:hover{
    font-family: "Brush Script MT", "Brush Script Std", cursive;
  color : BlueViolet ;
 
}

div.a {

  border-style: solid;
  border-color: rgb(201, 76, 76);
}

      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
		
		.map-container-4{
		overflow:hidden;
		padding-bottom:56.25%;
		position:relative;
		height:0;
		border: 6px
		}
		.map-container-4 iframe{
		left:0;
		top:0;
		height:90%;
		width:90%;
		position:absolute;
		}
      }
</style>

    <!-- Custom styles for this template -->
    <link href="offcanvas.css" rel="stylesheet">
  </head>
<body class="bg-light">
  
  <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
  <a class="navbar-brand mr-auto mr-lg-0" href="my_profile.php">My Profile</a>
  <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="map.php">Nearby co-workers</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="conference.php">Meetup</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="tematica.php">Weekly theme </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="poll_page.php">Votes</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="mesaje.php">Messages</a>
      </li>
	  	  <li class="nav-item">
        <a class="nav-link" href="index.php">White Board</a>
      </li>
	  
    </ul>
    <form  class="form-inline my-2 my-lg-0" action="cauta.php" method="get">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" name="search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>

	
  </div>
</nav>

<main role="main" >


</main>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="./assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="./assets/dist/js/bootstrap.bundle.min.js"></script>
        <script src="offcanvas.js"></script>

<div class=" .map-container-4 p-3 my-3 border border_question">
  <h1>Working...</h1>		
<div class="container">
  <p>
  
  </p>
</div>

</body>
</html>

