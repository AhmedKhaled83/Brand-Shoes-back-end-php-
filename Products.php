            <?php
            include "db_connection.php";
            $json = file_get_contents('php://input');
            $obj = json_decode($json, true);
            
           
             $prand_id=$obj['prand_id'];

          




            // $prand_id = 2;
            $Prand_type = 'men';

            $Prand = array();


            $Prand_item = mysqli_query($con , "SELECT * FROM `prand` WHERE   `Prand_id` = '$prand_id'");


            if(mysqli_num_rows($Prand_item) > 0){
                
            
             while( $item=  mysqli_fetch_object($Prand_item)){


                $item->prodact_Men = array();
                $item->prodact_Woman = array();

                $product = mysqli_query($con , "SELECT * FROM `products`  WHERE   `Prand_id` = '$prand_id'  ");

                if (mysqli_num_rows($product) > 0){

                
                while($men = mysqli_fetch_object($product)){

               if($men->Prand_type ==  $Prand_type ){
                  $item->prodact_Men[] = $men;

                }else  {

                     $woman_query = mysqli_query($con , "SELECT * FROM `products` WHERE `Prand_type`= 'woman' AND  `Prand_id` = '$prand_id' ");
                     $woman_item = mysqli_fetch_object($woman_query);
        
                    $item->prodact_Woman[] = $woman_item;
        }
                }
                    }


            $Prand[] = $item;
        
        }

        
            }

        
            echo json_encode ($Prand);





            ?>

