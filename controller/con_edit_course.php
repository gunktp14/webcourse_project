<?php
    session_start();

    if(!isset($_SESSION['admin_login'])){
        header("location: ../../signin.php");
    }
    
    $cs_id = $_SESSION['id_edit'];

    $cs_name=$_POST['cs_name'];
    $cs_img=$_POST['cs_img'];
    $cs_date=$_POST['cs_date'];
    $cs_wallet=$_POST['cs_wallet'];
    $cs_range_date=$_POST['cs_range_date'];
    $cs_fcourse=$_POST['cs_fcourse'];
    $cs_time=$_POST['cs_time'];
    $cs_location=$_POST['cs_location'];
    $cs_group=$_POST['cs_group'];
    $cs_detail=$_POST['cs_detail'];
    $cs_perform=$_POST['cs_perform'];
    $cs_reward=$_POST['cs_reward'];
    $cs_year=$_POST['cs_year'];

    include_once '../model/connect.php';
    include_once '../model/method_stmt.php';
    $obj = new method_stmt();
    $result = $obj->editCourse($cs_id,$cs_name,$cs_img,$cs_date,$cs_wallet,$cs_range_date,$cs_fcourse,$cs_time,$cs_location,$cs_group,$cs_detail,$cs_perform,$cs_reward,$cs_year,);
    if($result == true){
        unset($_SESSION['id_edit']);
        header("location: ../signin.php");
    }else {
        
    }









?>