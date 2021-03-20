<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="./show.js"></script>
<!------ Include the above in your HEAD tag ---------->

<?php 
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

include 'new_tab.php'

?>

<?php
    //$db = mysqli_connect('localhost', 'root', '', 'hack');
$db = mysqli_connect('ixnzh1cxch6rtdrx.cbetxkdyhwsb.us-east-1.rds.amazonaws.com', 'wz2ndun70bbrmh2y', 'f36udyu4k6meip7e', 'd8rrt20isslupc5k');
    $sql = "SELECT * FROM utilizatori WHERE adresa='$email1'";
    $result_user = mysqli_query($db, $sql);
    $row_user = mysqli_fetch_assoc($result_user);
    $id_user=$row_user['ID'];
    $prenume  = $row_user['prenume'];
    $nume  = $row_user['nume'];
    $poza = 'uploads/'.$row_user['poza'];
?>







<!DOCTYPE html><html class=''>
<head><script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
  <script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
  <script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'>
  </script>
  <meta charset='UTF-8'>
  <meta name="robots" content="noindex">
  <link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
  <link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
  <link rel="canonical" href="https://codepen.io/emilcarlsson/pen/ZOQZaV?limit=all&page=74&q=contact+" />
   <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,300' rel='stylesheet' type='text/css'>

<script src="https://use.typekit.net/hoy3lrg.js"></script>
<script>try{Typekit.load({ async: true });}catch(e){}</script>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'><link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.min.css'>
<style class="cp-pen-styles"></style>
<link href="style_mes.css" type="text/css" rel="stylesheet" />
</style></head>



<body id = "bodddy">
<!-- 

A concept for a chat interface. 

Try writing a new message! :)


Follow me here:
Twitter: https://twitter.com/thatguyemil
Codepen: https://codepen.io/emilcarlsson/
Website: http://emilcarlsson.se/

-->
<p id="exp_elem" style="visibility: hidden;"></p>
<p id="dest_elem" style="visibility: hidden;"></p>

<div id ="margin">
<div id="frame">
	<div id="sidepanel">
		<div id="profile">
			<div class="wrap">
				<img id="profile-img" src="<?php echo $poza; ?>" class="online" alt="" />
				<p><?php echo $prenume; ?>  <?php echo $nume; ?></p>
				<div id="status-options">
					<ul>
						<li id="status-online" class="active"><span class="status-circle"></span> <p>Online</p></li>
						<li id="status-away"><span class="status-circle"></span> <p>Away</p></li>
						<li id="status-busy"><span class="status-circle"></span> <p>Busy</p></li>
						<li id="status-offline"><span class="status-circle"></span> <p>Offline</p></li>
					</ul>
				</div>
				
			</div>
		</div>
		<div id="search">
			<label for=""><i class="fa fa-search" aria-hidden="true"></i></label>
			<input type="text" placeholder="Cauta contacte..." />
		</div>
		<div id="contacts">
      <ul>
          <?php
              $sql3 = "SELECT * FROM conversatii where ID_expeditor=$id_user OR ID_destinatar=$id_user ORDER BY ID DESC";
              $result_comm = mysqli_query($db, $sql3);

              while( $row_comm = mysqli_fetch_assoc($result_comm)) {
                $id_conv = $row_comm['ID'];
                $id_dest = $row_comm['ID_destinatar'];
                $id_exp = $row_comm['ID_expeditor'];
                $sql_comm_from = "SELECT * FROM utilizatori where ID=$id_dest OR ID=$id_exp AND ID<>$id_user";
                $result_comm_from = mysqli_query($db, $sql_comm_from);
                $row_comm_from = mysqli_fetch_assoc($result_comm_from);
                $poza_dest = 'uploads/'.$row_comm_from['poza'];
                $nume_dest = $row_comm_from['nume'];
                $prenume_dest = $row_comm_from['prenume'];
                $conv = $row_comm['nr'];
                
              ?>
               
                <li class="contact" id='contact'>
                  <a href="#" onclick="strt(<?php echo $conv; ?>,<?php echo $id_user; ?>)">
                  <div class="wrap">
                    <span class="contact-status online"></span>
                    <img src="<?php echo $poza_dest; ?>" alt="" />
                    <div class="meta">
                      <p style="visibility: hidden;"><?php echo $conv; ?></p>
                      <p class="name"><?php echo $nume_dest; ?> <?php echo $prenume_dest; ?></p>
                      
                    </div>
                  </div>
                </a>
                </li>
              
                <?php 
              }
            ?>

            
				
			</ul>

		</div>
		
	</div>
	<div class="content">
		<div class="contact-profile">
			<img id = "changePic" src=<?php echo $poza; ?> />
			<p id ='testthis'></p>
      <p id ='hiddenDest' style="visibility: hidden;">1</p>
      <p id ='hiddenExp' style="visibility: hidden;">1</p>

     
			<div class="social-media">
				<i class="fa fa-facebook" aria-hidden="true"></i>
				 <i class="fa fa-linkedin" aria-hidden="true"></i>
			</div>
		</div>
		<div class="messages">
			<ul id="messageToSee">

         <?php
              $sql4 = "SELECT * FROM mesaje GROUP BY ID_conversatie";
              $result_mess = mysqli_query($db, $sql4);

              while( $row_mess = mysqli_fetch_assoc($result_mess)) {
                $id_dest = $row_mess['ID_destinatar'];
                $id_exp = $row_mess['ID_expeditor'];
                $sql_comm_from = "SELECT * FROM utilizatori where ID=$id_dest OR ID=$id_exp AND ID<>$id_user";
                $result_comm_from = mysqli_query($db, $sql_comm_from);
                $row_comm_from = mysqli_fetch_assoc($result_comm_from);
                $poza_dest = 'uploads/'.$row_comm_from['poza'];
                //$convo_nr = $row_mess['nr'];
               
                $sms = $row_mess["mesaj"];
                
                if($id_dest == $id_user) {
                  $class = 'replies';
                } else {
                  $class = 'sent';
                }
              ?>
               <li id = '<?php echo $convo_nr; ?>' class="<?php echo $class; ?>" style="visibility: hidden;">
                 <img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
                 <p><?php echo $sms; ?></p>
               </li>
              
                <?php 
              
              }
            ?>


				
				
			</ul>
		</div>
		<div class="message-input">
			<div class="wrap">
        <form>
                  <input type="text" name="mess" id = 'textTrimitere'>
                  <button class="btn"  id = "btnTrimitere" value="sendmessage" placeholder="Spune ceva" onclick="return functieTrimitere($("#messages ul li:last-child"))">
                    <i class="fa fa-paper-plane" aria-hidden="true"></i>
                  </button>
                </form>
			
			
			</div>
		</div>
	</div>
</div>
</div>



      

<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script><script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
<script >$(".messages").animate({ scrollTop: $(document).height() }, "fast");

$("#profile-img").click(function() {
	$("#status-options").toggleClass("active");
});

$(".expand-button").click(function() {
  $("#profile").toggleClass("expanded");
	$("#contacts").toggleClass("expanded");
});

$("#status-options ul li").click(function() {
	$("#profile-img").removeClass();
	$("#status-online").removeClass("active");
	$("#status-away").removeClass("active");
	$("#status-busy").removeClass("active");
	$("#status-offline").removeClass("active");
	$(this).addClass("active");
	
	if($("#status-online").hasClass("active")) {
		$("#profile-img").addClass("online");
	} else if ($("#status-away").hasClass("active")) {
		$("#profile-img").addClass("away");
	} else if ($("#status-busy").hasClass("active")) {
		$("#profile-img").addClass("busy");
	} else if ($("#status-offline").hasClass("active")) {
		$("#profile-img").addClass("offline");
	} else {
		$("#profile-img").removeClass();
	};
	
	$("#status-options").removeClass("active");
});

function newMessage() {
	message = $(".message-input input").val();
	if($.trim(message) == '') {
		return false;
	}
	$('<li class="sent"><p>' + message + '</p></li>').appendTo($('.messages ul'));
  functieTrimitere(message);
	$('.message-input input').val(null);
	$('.contact.active .preview').html('<span>You: </span>' + message);
	$(".messages").animate({ scrollTop: $(document).height() }, "fast");
};

$('.submit').click(function() {
  newMessage();
});

$(window).on('keydown', function(e) {
  if (e.which == 13) {
    newMessage();
    return false;
  }
});
//# sourceURL=pen.js
</script>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="./assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
      <script src="./assets/dist/js/bootstrap.bundle.min.js"></script>
        <script src="offcanvas.js"></script>


</body></html>