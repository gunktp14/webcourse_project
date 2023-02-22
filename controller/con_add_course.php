<?php

    session_start();

    if(!isset($_SESSION['admin_login'])){
        header("location: ../../signin.php");
    }

    $cs_name = $_POST['cs_name'];
    $cs_img = $_POST['cs_img'];
    $cs_date = $_POST['cs_date'];
    $cs_wallet = $_POST['cs_wallet'];

    include_once '../model/connect.php';
    include_once '../model/method_stmt.php';
    $obj = new method_stmt();

    if(isset($_POST['submit'])){
        if(empty($cs_name)){
            $_SESSION['error'] = "กรุณากรอก ชื่อคอร์ส ของคุณ";
            header('location: ../view/view_admin/view_add_course.php');
        }else if(strlen($cs_name) < 5){
            $_SESSION['error'] = "ชื่อของคอร์สต้องมีตัวอักษรตั้งเเต่ 5 ตัวขึ้นไป";
            header('location: ../view/view_admin/view_add_course.php');
        }else if(empty($cs_img)){
            $_SESSION['error'] = "กรุณาระบุที่อยู่ รูปภาพ";
            header('location: ../view/view_admin/view_add_course.php');
        }else if(empty($cs_date)){
            $_SESSION['error'] = "กรุณากรอกวันที่";
            header('location: ../view/view_admin/view_add_course.php');
        }else if(empty($cs_wallet)){
            $_SESSION['error'] = "กรุณากรอก ราคาคอร์ส ของคุณ";
            header('location: ../view/view_admin/view_add_course.php');
        }else if(!filter_var($cs_wallet,FILTER_VALIDATE_INT)){
            $_SESSION['error'] = "กรุณากรอก ราคา เป็นตัวเลข";
            header('location: ../view/view_admin/view_add_course.php');
        }else if(empty($_SESSION['error'])){
            $rs2 = $obj->addCourseDetails($cs_name,$cs_img,$cs_date,$cs_wallet);
            if($rs2 == true){
                $_SESSION['success'] = "ได้ทำการเพิ่มคอร์สของคุณเรียบร้อยเเล้ว";
                header('location: ../view/view_admin/view_add_course.php');
            }
        }
        
    }












?>