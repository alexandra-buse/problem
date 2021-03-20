<?php 
#ob_start(); 

#session_start();
#$user = $_SESSION['user'];
#$pass = $_SESSION['pass'];
#

$q = $_GET['q'];  //preluam datele din request
$string_nou = (explode("_",$q));  //separeare dupa identificatorul "_"
$current_user = $string_nou[0];
$new_contact = $string_nou[1];


$messages=array();
$senders=array();
$receivers=array();
$types=array();
$pics=array();
$names=array();
$prenames=array();
$var_fin=array();
$gasit = 0;
$last = '';
#echo $longi;
#echo $latit ;



//$con = mysqli_connect('localhost','root','','hack');
$con = mysqli_connect('ixnzh1cxch6rtdrx.cbetxkdyhwsb.us-east-1.rds.amazonaws.com', 'wz2ndun70bbrmh2y', 'f36udyu4k6meip7e', 'd8rrt20isslupc5k');
if (!$con) {
  die('Could not connect: ' . mysqli_error($con));
}

//$update_nou = "UPDATE `utilizatori` SET `latitudine`='" . $latit . "',`longitudine`='" . $longi . "' WHERE `adresa` = 'adriana@panda.com'";


//$result = mysqli_query($con,$update_nou);
#echo $result;

$query = "SELECT `conversatii`.`ID`,`conversatii`.`ID_expeditor`, `conversatii`.`ID_destinatar` FROM `conversatii`";

//mysqli_select_db($con,"ajax_demo");
$result = mysqli_query($con,$query);



while($row = mysqli_fetch_array($result)) {
  #echo  . $row['latitudine'] . ;
  #echo  . $row['longitudine'] . ;
  if(($row['ID_expeditor'] == $current_user && $row['ID_destinatar']==$new_contact) || ($row['ID_destinatar'] == $current_user && $row['ID_expeditor']==$new_contact)) {
  $gasit = 1;
  array_push($messages,$row['ID']);
  array_push($senders,$row['ID_expeditor']);
  array_push($receivers,$row['ID_destinatar']);
}
}

if ($gasit == 0) {
  $query2 = "SELECT  `conversatii`.`ID`, `conversatii`.`ID_expeditor`, `conversatii`.`ID_destinatar` FROM `conversatii` ORDER BY ID DESC";
  $result2 = mysqli_query($con,$query2);
  $row2 = mysqli_fetch_array($result2);
  $last = $row2['ID']+1;
  

  array_push($messages,$row2['ID']);
  array_push($senders,$row2['ID_expeditor']);
  array_push($receivers,$row2['ID_destinatar']);

  $sql = "INSERT INTO conversatii (ID, ID_expeditor, ID_destinatar)
  VALUES ('$last', '$current_user', '$new_contact')";
  $con->query($sql);

}

$var_1 =  implode(",",$messages);// Use of implode function  
$var_2 =  implode(",",$senders);// Use of implode function  
$var_3 =  implode(",",$receivers);// Use of implode function


array_push($var_fin, $var_1);
array_push($var_fin, $var_2);
array_push($var_fin, $var_3);
echo implode("_",$var_fin);


 // array_push($longitudini,$row['latitudine']);


//echo implode(",",$latitudini);// Use of implode function  
//echo implode(",",$longitudini);// Use of implode function  

mysqli_close($con);
?>