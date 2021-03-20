<?php 
    include 'dbConfig.php';
	session_start(); 
	$email1 = $_SESSION['email'];
	if (!isset($_SESSION['email'])) {
		$_SESSION['msg'] = "You must log in first";
		header('location: login.php');
	}

	if (isset($_GET['logout'])) {
		session_destroy();
		unset($_SESSION['email']);
		header("location: login.php");
	}

?>




<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <meta name="description" content="">
   <meta name="generator" content="Jekyll v4.1.1">
   <title>My Profile</title>

   <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/offcanvas/">

    <!-- Bootstrap core CSS -->
<link href="./assets/dist/css/bootstrap.min.css" rel="stylesheet">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.card {
  border-radius: 25px;
  border: 2px solid LightSteelBlue ;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin:40px auto;
  text-align: center;
  font-family: arial;
}
.hob{
 color: black;
 font-family: "Comic Sans MS", "Comic Sans", cursive;
}

.breakline{
  width: auto;
  color: black;
  background-color: black;
  height: 2px;
  border: 1px groove LightSteelBlue; 
}

.titlu{
  font-family: "Brush Script MT", "Brush Script Std", cursive;
  color : black;
  transition: color 1s;
  font-size: 55px;
}
.titlu:hover{
    font-family: "Brush Script MT", "Brush Script Std", cursive;
  color : magenta;
  font-size: 55px;
}


.descriere{
  transition: color 1s;
  color : black;
   font-family: "Lucida Console", "Courier New", monospace;
}
.descriere:hover{
    
  color : magenta;
}



.img_cls{
 border-radius: 25px;
 margin: auto auto;
 border: 2px LightSteelBlue ;
 border-style: inset;
}

.title {
  color: grey;
  font-size: 18px;
}

.button_1 {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a_1 {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button_1:hover, a_1:hover {
  opacity: 0.7;
}

.hobbies {
  border: 2px solid LightSteelBlue ;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 600px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.posts {
  border: 2px solid LightSteelBlue ;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 600px;
  margin: auto;
  text-align: center;
  font-family: arial;
}
</style>
</head>
<body>

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
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
	
	
  </div>
  
  
</nav>
	<div class="posts">

<h2 style="text-align:center">Posts</h2>
<?php
// Include the database configuration file
include 'dbConfig.php';
// Get images from the database
$query = $db->query("SELECT U.ID as id_util,U.poza as poza, P.ID as ID_postare, U.Nume as nu , U.Prenume as pre, P.titlu as titlu, P.descriere as descriere, P.imagine as imagine FROM utilizatori U, postari P WHERE P.ID_utilizator = U.ID ");

if($query->num_rows > 0){
    while($row = $query->fetch_assoc()){
        $nume = $row['nu'];
		$postare = $row['ID_postare'];
		$id_util = $row['id_util'];
		$prenume = $row['pre'];		
		$titlu = $row['titlu'];	
		$image = 'uploads/'.$row["imagine"];	
		$poza = 'uploads/'.$row["poza"];
		$descriere = $row['descriere'];	 ?>
		<img src="<?php echo $poza; ?>" alt="John" class = "img_cls" style="width:10%"> <?php
         echo "<p>".$nume." ".$prenume."</p>";
		echo "<p class=\"titlu\">Title: ".$titlu;
?>
     <img src="<?php echo $image; ?>" alt="John" class = "img_cls" style="width:100%">
	 <?php echo "<p class = \"descriere\">Desciption: ".$descriere;
	


$query1 = $db->query("SELECT C.text as text, U.Nume as nu, U.Prenume as pre, U.poza FROM comments C, postari P, utilizatori U WHERE C.ID_postare='" .$postare. "' AND C.ID_utilizator = U.ID AND P.ID = C.ID_postare " );


echo "<p>Comentarii : </p>";
if($query1->num_rows > 0){
    while($row1 = $query1->fetch_assoc()){
        $nume = $row1['nu'];
		$prenume = $row1['pre'];		
		$comentariu = $row1['text'];	
		
		echo "<p>".$nume." ".$prenume." : ";
		echo  $comentariu ;
	 
}}
?>
	 <div class = "breakline"> </div>
	</p>
<?php }} ?>

</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="./assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="./assets/dist/js/bootstrap.bundle.min.js"></script>
        <script src="offcanvas.js"></script>
		
</body>
</html>