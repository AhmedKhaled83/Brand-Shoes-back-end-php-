<?php 
 include "db_connection.php";
 $json = file_get_contents('php://input');
 $obj = json_decode($json, true);
//  $user_id = $obj['user_id'];
$user_id  = "10" ;
$obj =  new stdClass();

if($user_id){

$query = mysqli_query($con ,"SELECT * FROM `user` WHERE `user_id` = '$user_id'") ;

 if (mysqli_num_rows($query) > 0){

     $user = mysqli_fetch_object($query) ;

     echo json_encode($user);
 }
 else{
     echo json_encode("error");
 }
}

?>