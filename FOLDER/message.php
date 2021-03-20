<?php

    $id_me = $_GET['id_me'];
    $id_receiver = $_GET['id_receiver'];
    $id_conv = $_GET['id_conv'];

    if(isset($_POST['sendmessage']))
    {
            //$db = mysqli_connect('klbcedmmqp7w17ik.cbetxkdyhwsb.us-east-1.rds.amazonaws.com', 'tl2lacql4ss0dtox', 'bdvae9qql2s5wcl7', 'ya37bkwqhnzijdj9');
            //$db = mysqli_connect('ixnzh1cxch6rtdrx.cbetxkdyhwsb.us-east-1.rds.amazonaws.com', 'wz2ndun70bbrmh2y', 'f36udyu4k6meip7e', 'd8rrt20isslupc5k');
        $db = mysqli_connect('ixnzh1cxch6rtdrx.cbetxkdyhwsb.us-east-1.rds.amazonaws.com', 'wz2ndun70bbrmh2y', 'f36udyu4k6meip7e', 'd8rrt20isslupc5k');

                    $text = mysqli_real_escape_string($db, $_POST['mess']);
                    $date = date("Y-m-d H:i:s");
                    $insertcomm = "INSERT INTO mesaje VALUES ('', '$id_conv' $id_me', '$id_receiver', '$text', '$date')";
                    mysqli_query($db, $insertcomm);
                    mysqli_close($db);
                    header("location: index.php");

                }
            ?>