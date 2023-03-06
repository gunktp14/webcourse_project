<?php

$re_email = $_POST['re_email'];
$re_prefix = $_POST['re_prefix'];
$re_name = $_POST['re_name'];
$re_phonenumber = $_POST['re_phonenumber'];
$re_IDnumber = $_POST['re_IDnumber'];
$re_educational = $_POST['re_educational'];
$re_img = $_POST['re_img'];
$re_course_reg = $_POST['submit'];

$data_reg_course=array();
$data_reg_course["re_email"]=$re_email; 
$data_reg_course["re_prefix"]=$re_prefix;
$data_reg_course["re_name"]=$re_name;
$data_reg_course["re_phonenumber"]=$re_phonenumber;
$data_reg_course["re_IDnumber"]=$re_IDnumber;
$data_reg_course["re_educational"]=$re_educational;
$data_reg_course["re_img"]=$re_img;
$data_reg_course["re_course_reg"]=$re_course_reg;
print_r($data_reg_course);

include_once '.././model/connect.php';
include_once '.././model/lregister.php'; 
$obj = new Register();
$rs2 = $obj->registerCourse($data_reg_course); 
if($rs2 == true){
    $_SESSION['success'] = "คุณได้ทำการสมัครสมาชิกเรียบร้อยเเล้ว";
    header('location: .././view/view_user/user.php');
}else {
    $_SESSION['error'] = "Sorry. Have an error!";
    header('location: .././view/view_user/user.php');
}













?>