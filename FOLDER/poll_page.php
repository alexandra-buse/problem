<!DOCTYPE html>
<?php
// Include the database configuration file
include 'dbConfig.php';

// Get images from the database


$query1 = $db->query("SELECT I.intrebare as intr, R.Raspuns FROM intrebari I, raspunsuri R WHERE R.ID_intrebare=I.ID AND I.ID = 3");
$query2 = $db->query("SELECT I.intrebare as intr, R.Raspuns FROM intrebari I, raspunsuri R WHERE R.ID_intrebare=I.ID AND I.ID = 2");
$query3 = $db->query("SELECT I.intrebare as intr, R.Raspuns FROM intrebari I, raspunsuri R WHERE R.ID_intrebare=I.ID AND I.ID = 1");



if($query1->num_rows > 0){
    while($row1 = $query1->fetch_assoc()){
		
		$intrebare1 = $row1['intr'];
		
		
}}	

if($query2->num_rows > 0){
    while($row2 = $query2->fetch_assoc()){
		
		$intrebare2 = $row2['intr'];
		
		
}}	

if($query3->num_rows > 0){
    while($row3= $query3->fetch_assoc()){
		
		$intrebare3 = $row3['intr'];
		
		
}}	
?>
<html lang="en">
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Activity Votes</title>

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


 input[type=submit]  {
    margin: 0 625px;
    text-align: center;
  background-color: rgb(55, 76, 76);
  border: none;
  color: white;
  padding:auto;
  text-decoration: none;
  font-size: 2.125rem;
  cursor: pointer;
  opacity: .5;
  transition: opacity .5s;
  border-radius: 25px;
  border: 2px solid LightSteelBlue;
  
}

input[type=submit]:hover{
opacity: 1; }

.border_question{
	border-radius: 25px;
  border: 3px solid LightSteelBlue;
}
.container{opacity:0.3;
 transition: opacity 1s;}

.container:hover{
opacity: 1;
}


.container:hover:after {
opacity: 1;
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
		}
		.map-container-4 iframe{
		left:0;
		top:0;
		height:100%;
		width:100%;
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

<main role="main" class="container">
 

</main>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="./assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="./assets/dist/js/bootstrap.bundle.min.js"></script>
        <script src="offcanvas.js"></script>
		
<form action="raspunsuri.php" method="get">
<div class="container p-3 my-3 bg-info border border_question">
  <h1><?php echo $intrebare1; ?></h1>
  <p>
  
  <?php

$query = $db->query("SELECT I.intrebare, R.raspuns as raspuns FROM intrebari I, raspunsuri R WHERE R.ID_intrebare=I.ID AND I.ID = 3");

if($query->num_rows > 0){
    while($row = $query->fetch_assoc()){
		
		$raspuns = $row['raspuns'];?> 		<INPUT TYPE="Radio" Name="Gender" Value="<?php echo $row['raspuns']; ?>"><?php echo " ".$raspuns."<p>"; ?> <?php 
		
}}	
?>
  
  </p>
</div>

<input type="submit" value="Submit">
</div>


<div class="container p-3 my-3 bg-success text-white border_question">

  <h1><?php echo $intrebare2; ?></h1>
  <p>

   <?php

$query = $db->query("SELECT I.intrebare, R.raspuns as raspuns FROM intrebari I, raspunsuri R WHERE R.ID_intrebare=I.ID AND I.ID = 2");

if($query->num_rows > 0){
    while($row = $query->fetch_assoc()){
		
		$raspuns = $row['raspuns'];?> 		<INPUT TYPE="Radio" Name="Gender" Value="<?php echo $raspuns; ?>"><?php echo " ".$raspuns."<p>"; ?> <?php 
	
	
}}	
?>
  </p>
</div>
</div>

<input type="submit" value="Submit">
</div>


<pre id="log">
</pre>

<div class="container p-3 my-3 bg-primary text-white border_question">
  <h1><?php echo $intrebare3; ?></h1>
  <p>
   <?php

$query = $db->query("SELECT I.intrebare, R.raspuns as raspuns FROM intrebari I, raspunsuri R WHERE R.ID_intrebare=I.ID AND I.ID = 1");

if($query->num_rows > 0){
    while($row = $query->fetch_assoc()){
		
		$raspuns = $row['raspuns'];?> 		<INPUT TYPE="Radio" Name="Gender" Value="<?php echo " ".$raspuns."<p>"; ?>"><?php echo " ".$raspuns."<p>"; ?> <?php 
		
}}	
?>
  </p>
</div>

</div>

<input type="submit" value="Submit">
</div>
</form>
</body>
</html>

