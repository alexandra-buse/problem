<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Nearby co-workers</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/offcanvas/">

    <!-- Bootstrap core CSS -->
<link href="./assets/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="./map_fct.js"></script>
	<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
  <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAX2a5roVHx6ks3XjOqe-KdtL2G8wBMMxg&callback=initMap&libraries=&v=weekly"
      defer
    ></script>

	
    <style type="text/css">
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
  <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-dark rounded shadow-sm">
    <img class="mr-3" src="./assets/brand/panda.jpg" alt="" height="58">
    <div class="lh-100">
      <h6 class="mb-0 text-white lh-100" style="padding-right: 50px"; >Co-workers in the area</h6>
    </div>
	<p style="float: right";>
		<form>
			<input id="locate_me_btn" class="btn btn-outline-success my-2 my-sm-0 text_align_right" type="button" value="Locate me!" onclick = "strt()"/>
		</form>
	</p>
  </div>  
	  

	   <!--Main layout-->
  <div class="container-fluid m-0 p-0">

    <!--Google map-->
    <div id="map-container-google-4" class="z-depth-1-half map-container-4 rounded shadow-sm " style="height: 500px;">

    </div>

  </div>

<!--Main layout-->

  </div>

</main>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="./assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="./assets/dist/js/bootstrap.bundle.min.js"></script>
        <script src="offcanvas.js"></script>
</body>
</html>
