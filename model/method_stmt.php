<?php
    class method_stmt{
        private $ConDB;

         public function __construct(){
             $con = new ConDB();
             $con->connect();
             $this->ConDB = $con->conn;
            }
        
            
        public function check_Email($email){
            $sql = "SELECT `email` FROM `user_tb` WHERE `email` ='".$email."'";
            $query = $this->ConDB->prepare($sql);
            if( $query->execute()){
                $result = $query->fetch(PDO::FETCH_ASSOC);
                return $result;
                return true;
            }else{
                return false;
            }
        }

        public function check_Username($username){
            $sql = "SELECT `username` FROM `user_tb` WHERE `username` ='".$username."'";
            $query = $this->ConDB->prepare($sql);
            if( $query->execute()){
                $result = $query->fetch(PDO::FETCH_ASSOC);
                return $result;
                return true;
            }else{
                return false;
            }
        }

        public function register($username,$upassword,$email,$urole){
            $sql = "INSERT INTO `user_tb` (`id` , `username` , `upassword` ,`email` ,`urole`)
            VALUES ('',:username,:upassword,:email,:urole)";
            $query = $this->ConDB->prepare($sql);
            $query->bindParam(":username",$username);
            $query->bindParam(":upassword",$upassword);
            $query->bindParam(":email",$email);
            $query->bindParam(":urole",$urole);
            if( $query->execute()){
                return true;
            }else {
                return false;
            }

            
        }

        public function login($username,$upassword){
            $sql = "SELECT `username` FROM `user_tb` WHERE `username` = :username AND `upassword` = :upassword"; 
            $query = $this->ConDB->prepare($sql);
            $query->bindParam(":username",$username);
            $query->bindParam(":upassword",$upassword);
            if( $query->execute()){
                $result = $query->fetch(PDO::FETCH_ASSOC);
                return $result;
                return true;
            }else{
                return false;
            }
        }

        public function checkAdmin($username){
            $sql = "SELECT `urole` FROM `user_tb` WHERE `username` = :username";
            $query = $this->ConDB->prepare($sql);
            $query->bindParam(":username",$username);
            if($query->execute()){
                $result = $query->fetch(PDO::FETCH_ASSOC);
                return $result;
                return true;
            }else {
                return false;
            }
        }

        public function getCourse(){
            $sql = "SELECT * FROM `sci_cs`";
            $query = $this->ConDB->prepare($sql);
            if($query->execute()){
                $result = $query->fetchAll(PDO::FETCH_ASSOC);
                return $result;
                return true;
            }else {
                return false;
            }
        }


        public function getDeleteCourse($cs_id){
            $sql = "DELETE FROM `sci_cs` WHERE `cs_id` = :cs_id";
            $query = $this->ConDB->prepare($sql);
            $query->bindParam(":cs_id",$cs_id);
            if($query->execute()){
                return true;
            }else {
                return false;
            }
        }

        public function addCourseDetails($cs_name,$cs_img,$cs_date,$cs_wallet){
            $sql = "INSERT INTO `sci_cs` (`cs_name`,`cs_img`,`cs_date`,`cs_wallet`)
            VALUES (:cs_name,:cs_img,:cs_date,:cs_wallet)";
            $query = $this->ConDB->prepare($sql);
            $query->bindParam(":cs_name",$cs_name);
            $query->bindParam(":cs_img",$cs_img);
            $query->bindParam(":cs_date",$cs_date);
            $query->bindParam(":cs_wallet",$cs_wallet);
            if($query->execute()){
                return $cs_name;
                return true;
            }else {
                return false;
            }
        }

        public function getCourseDetails($cs_id){
            $sql = "SELECT * FROM `sci_cs` WHERE `cs_id` = :cs_id";
            $query = $this->ConDB->prepare($sql);
            $query->bindParam(":cs_id",$cs_id); 
            if($query->execute()){
                $result = $query->fetch(PDO::FETCH_ASSOC);
                return $result;
                return true;
            }else {
                return false;
            }
        }

        public function editCourse($cs_id, $cs_name, $cs_img, $cs_date, $cs_wallet, $cs_range_date, $cs_fcourse, $cs_time, $cs_location, $cs_group, $cs_detail, $cs_perform, $cs_reward, $cs_year){
                $sql = "UPDATE `sci_cs` SET `cs_name` = '". $cs_name ."', `cs_img` = '". $cs_img ."', `cs_date` = '". $cs_date ."', `cs_wallet` = '". $cs_wallet ."'
                , `cs_range_date` = '". $cs_range_date ."', `cs_fcourse` = '". $cs_fcourse ."', `cs_time` = '". $cs_time ."', `cs_location` = '". $cs_location ."', `cs_group` = '". $cs_group ."'
                , `cs_detail` = '". $cs_detail ."', `cs_perform` = '". $cs_perform ."', `cs_reward` = '". $cs_reward ."', `cs_year` = '". $cs_year ."' WHERE `cs_id` = '". $cs_id ."'"; 
                $query = $this->ConDB->prepare($sql);
                if( $query->execute()){
                    return true;
                }else {
                    return false;
                }
            }


        public function searchYear($cs_year){
            $sql = "SELECT * FROM `sci_cs` WHERE `cs_year` = :cs_year";
            $query = $this->ConDB->prepare($sql);
            $query->bindParam(":cs_year",$cs_year);
            if($query->execute()){
                $result = $query->fetchAll(PDO::FETCH_ASSOC); 
                return $result;
                return true;
            }else {
                return false;
            }

        }

        public function searchName($search_name){
            $sql = "SELECT * FROM sci_cs WHERE cs_name LIKE '%$search_name%'";
            $query = $this->ConDB->prepare($sql);
            if($query->execute()){
                $result = $query->fetchAll(PDO::FETCH_ASSOC);
                return $result;
                return true;
            }else {
                return false;
            }

        }
        

        
        

    }



?>