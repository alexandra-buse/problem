<?php
// Include the database configuration file
include 'dbConfig.php';
header("Location: my_profile.php"); // Redirecting To Home Page
$statusMsg = '';

//if(!isset($_SESSION['login_user'])){
//header("location: index.php"); // Redirecting To Home Page
//}

// File upload path
$targetDir = "uploads/";
$fileName = basename($_FILES["file"]["name"]);
$targetFilePath = $targetDir . $fileName;
$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
$email1 = $_SESSION['email'];
if(isset($_POST["submit"]) && !empty($_FILES["file"]["name"])){
    // Allow certain file formats
    $allowTypes = array('jpg','png','jpeg','gif','pdf');
    if(in_array($fileType, $allowTypes)){
        // Upload file to server
        if(move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath)){
            // Insert image file name into database
			$image_text = mysqli_real_escape_string($db, $_POST['image_text']);
			$image_title = mysqli_real_escape_string($db, $_POST['title']);			
			$id = $db->query("SELECT ID FROM utilizatori WHERE adresa = '".$email1."'");
			$row = mysqli_fetch_assoc($id);
			$login_session = $row['ID'];
			
            $insert = $db->query("INSERT into postari (ID_utilizator,titlu,imagine,descriere ) VALUES ('".$login_session."','".$image_title."','".$fileName."','$image_text')");
            if($insert){
                $statusMsg = "The file ".$fileName. " has been uploaded successfully.";
            }else{
                $statusMsg = "File upload failed, please try again.";
            } 
        }else{
            $statusMsg = "Sorry, there was an error uploading your file.";
        }
    }else{
        $statusMsg = 'Sorry, only JPG, JPEG, PNG, GIF, & PDF files are allowed to upload.';
    }
}else{
    $statusMsg = 'Please select a file to upload.';
}

// Display status message
echo $statusMsg;
?>