<?php
// Database configuration
//$db = mysqli_connect('klbcedmmqp7w17ik.cbetxkdyhwsb.us-east-1.rds.amazonaws.com', 'tl2lacql4ss0dtox', 'bdvae9qql2s5wcl7', 'ya37bkwqhnzijdj9');
$db = mysqli_connect('ixnzh1cxch6rtdrx.cbetxkdyhwsb.us-east-1.rds.amazonaws.com', 'wz2ndun70bbrmh2y', 'f36udyu4k6meip7e', 'd8rrt20isslupc5k');

// Check connection
if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}
?>