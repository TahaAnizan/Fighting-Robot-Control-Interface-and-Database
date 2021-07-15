<?php

error_reporting(0);
//Create Connection

$user    = 'root';
$pass    = '';
$db      = 'robotBase';

$connection = new mysqli('localhost' , $user , $pass , $db);

//Will select the last record
$query = "SELECT    *
FROM      baseControl
ORDER BY  id DESC
LIMIT     1 " ;

$res = mysqli_query($connection,$query);


if (mysqli_num_rows($res) > 0) {


   $row = mysqli_fetch_array($res); 

//Print the last values inserted for the directions
    //echo  $row["id"] . "<br>";
    echo  $row["forward"] . "<br>";
    echo  $row["leftt"] . "<br>";
    echo  $row["stoop"] . "<br>";
    echo  $row["rightt"] . "<br>";
    echo  $row["backward"] . "<br>";

}
else{
    echo "No Result Found!!";
}
//retrievalBase.php
?>
