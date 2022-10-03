        <?php
       include "db_connection.php";
       $json = file_get_contents('php://input');
       $obj = json_decode($json, true);
       


       $user_name= $obj['user_name'];
       $user_email= $obj['user_email'];
       $user_password = $obj ['user_password'];
       $user_phone=  $obj['user_phone'];
       $user_image= $obj['user_image'];
       $user_token =  $obj['user_token'];

        // $user_name='seif';
        // $user_email='seif@gmail.com';
        // $user_password = 'seif0122';
        // $user_phone= '01011121202';
        // $user_image='image4';
        // $user_token = '222';
        // $user_login = 1;


        if( $user_name && $user_email && $user_phone && $user_password && $user_token){

            $user_query = mysqli_query($con ,"SELECT * FROM `user` WHERE `user_email` ='$user_email';");
            

            if (mysqli_num_rows($user_query) == 0){

                $insert_user = mysqli_query($con ,"INSERT INTO `user`( `user_name`, `user_email`, `user_password`, `user_phone`, `user_tokn`,`user_login`, `user_date_login`) VALUES ('$user_name','$user_email','$user_password','$user_phone','$user_token','$user_login',DATE_ADD(now(),interval 2 hour));");
      
        if (mysqli_affected_rows($con) > 0 ){
           
            $user_id = mysqli_insert_id($con);
           
            echo json_encode($user_id);
        
        }else{
        
            echo json_encode("error insert data");
        }
         
    }else{
            echo json_encode("eamil found");
       
        }
        
    }
        ob_end_flush();



        ?>

