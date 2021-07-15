<?php

$user  = 'root';
$pass  =  '';
$db    =  'robotBase';



$connection = new mysqli ('localhost', $user, $pass, $db );


if($connection-> connection_error){
    die("Unable to connecte the Database!!" . $mysqli->connect_error);
}

echo "Connecte To the Database Successfully.";

if(isset($_POST['forward'])||isset($_POST['leftt'])||isset($_POST['stoop'])||isset($_POST['rightt'])||isset($_POST['backward'])) {

$forward  = $_POST['forward']; 
$leftt    = $_POST['leftt'];
$stoop    = $_POST['stoop'];
$rightt   = $_POST['rightt'];
$backward = $_POST['backward'];


$query = "INSERT INTO baseControl (forward, leftt, stoop, rightt, backward) VALUES
 ('$forward' , '$leftt' , '$stoop' , '$rightt' , '$backward' )";

if ($connection->query($query ) === TRUE) {
  echo "<br>" . "New data inserted successfully.";
} 
else {
  echo "Error: " . $query  . "<br>" . $connection->error;
}
}
  $connection->close();
  ?>
