<?php
    $cs_id = $_GET['cs_id'];

    include_once '../model/connect.php';
    include_once '../model/method_stmt.php';
    $obj = new method_stmt();
    $rs2 = $obj->getDeleteCourse($cs_id);
    if($rs2 == true){
        header("location: ../signin.php");
    }
?>