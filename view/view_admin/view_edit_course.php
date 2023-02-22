<?php
    session_start();

    if(!isset($_SESSION['admin_login'])){
        header("location: ../../signin.php");
    }

    $cs_id = $_GET['cs_id'];
    $_SESSION['id_edit'] = $cs_id;
    include_once '../../model/connect.php';
    include_once '../../model/method_stmt.php';
    $obj = new method_stmt();
    $row = $obj->getCourseDetails($cs_id);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Webcourse</title>
    <link rel = "icon" href = "https://assets.stickpng.com/thumbs/5847f439cef1014c0b5e4890.png" type = "image/x-icon">
    <!--CSS Bootstrap5-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!--JavaScript Bootstrap5-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
     <!-- Link Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300&display=swap" rel="stylesheet">
    <!--Link Style.css-->
    <link rel="stylesheet" href="style.css">
    <!--Icon Bootstrap-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <style>
        @import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css");
        @import url('https://fonts.googleapis.com/css2?family=Kanit:wght@300&display=swap');
        body{
            background-color:#EAFDFF;     
            font-family: 'Kanit', sans-serif;        
            }
        #form-login{
            background-color: white;
            border-radius:25px;
        }
        p.text-small{
            font-size: smaller;
            color:rgb(56, 56, 56);
        }
        a.forget_pass_button{
            font-size: x-small;
            float: right;
        }
        .small-font{
            font-size:smaller;
        }
        .x-small-font{
            font-size:x-small;
        }
        .alert{
            height: 10%;   
            text-align:center; 
        }
        
    </style>
</head>
<body>
        <div class="container">
            <br><br><br>
            <div class="row">
                <div class="col-3"></div> 

                <div id="form-login" class="col-6">
                    <br>
                    <div>
                        <h3>Edit Course&nbsp<i style="font-size:16px" class="bi bi-pencil-square"></i></h3> 
                        
                    </div>
                    <p class="text-small">กรอกรายละเอียดเพื่อ เเก้ไขคอร์สของคุณ</p> 
                    <?php
                        if(isset($_SESSION['success'])){
                    ?>
                    <div class="alert-md alert-primary" role="alert">
                       <p style="font-size:small;text-align:center;margin-top:0%;">
                       <?php 
                        echo $_SESSION['success'] . "&nbsp<a href='./admin.php'>view course</a>";
                        unset($_SESSION['success']);
                       ?>
                       </p>
                    </div>
                    <?php
                        }
                    ?>
                    <?php
                        if(isset($_SESSION['error'])){
                    ?>
                    <div class="alert-md alert-danger" role="alert">
                       <p style="font-size:small;text-align:center;margin-top:0%;">
                       <?php 
                        echo $_SESSION['error'];
                        unset($_SESSION['error']);
                       ?>
                       </p>
                    </div>
                    <?php 
                        }
                    ?>
                    <?php
                        if(isset($_SESSION['warning'])){
                    ?>
                    <div class="alert-md alert-danger" role="alert">
                       <p style="font-size:small;text-align:center;margin-top:0%;">
                       <?php 
                        echo $_SESSION['warning'];
                        unset($_SESSION['warning']);
                       ?>
                       </p>
                    </div>
                    <?php
                        }
                    ?>
                    <hr>
                    <form action="../../controller/con_edit_course.php" method="POST"> 
                        <div class="form-group row">
                                <label for="username" class="col-sm-4 col-form-label small-font">&nbsp&nbsp&nbsp&nbsp&nbspชื่อคอร์ส</label>
                            <div class="col-sm-7">
                                <input type="text" value="<?=$row['cs_name']?>"class="form-control small-font" id="username" name="cs_name">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="upassword" class="col-sm-4 col-form-label small-font">&nbsp&nbsp&nbsp&nbsp&nbspรูปภาพ</label>
                            <div class="col-sm-7">
                                <input type="text" value="<?=$row['cs_img']?>"class="form-control small-font" id="upassword" name="cs_img">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="cpassword" class="col-sm-4 col-form-label small-font">&nbsp&nbsp&nbsp&nbsp&nbspวันที่</label>
                            <div class="col-sm-7">
                                <input type="date" value="<?=$row['cs_date']?>" class="form-control small-font" id="cpassword" name="cs_date" placeholder="">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="cpassword" class="col-sm-4 col-form-label small-font">&nbsp&nbsp&nbsp&nbsp&nbspราคา</label>
                            <div class="col-sm-7">
                                <input type="text" value="<?=$row['cs_wallet']?>" class="form-control small-font" id="cpassword" name="cs_wallet" placeholder="">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="Email" class="col-sm-4 col-form-label small-font">&nbsp&nbsp&nbsp&nbsp&nbspช่วงเวลาเรียน</label>
                            <div class="col-sm-7">
                                <input type="text" value="<?=$row['cs_range_date']?>" class="form-control small-font" id="Email" name="cs_range_date">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="Email" class="col-sm-4 col-form-label small-font">&nbsp&nbsp&nbsp&nbsp&nbspวัตถุประสงค์</label>
                            <div class="col-sm-7">
                                <input type="text" value="<?=$row['cs_fcourse']?>" class="form-control small-font" id="Email" name="cs_fcourse">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="Email" class="col-sm-4 col-form-label small-font">&nbsp&nbsp&nbsp&nbsp&nbspระยะเวลาของหลักสูตร</label>
                            <div class="col-sm-7">
                                <input type="text" value="<?=$row['cs_time']?>" class="form-control small-font" id="Email" name="cs_time">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="Email" class="col-sm-4 col-form-label small-font">&nbsp&nbsp&nbsp&nbsp&nbspสถานที่</label>
                            <div class="col-sm-7">
                                <input type="text" value="<?=$row['cs_location']?>" class="form-control small-font" id="Email" name="cs_location">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="Email" class="col-sm-4 col-form-label small-font">&nbsp&nbsp&nbsp&nbsp&nbspกลุ่มเป้าหมาย</label>
                            <div class="col-sm-7">
                                <input type="text" value="<?=$row['cs_group']?>" class="form-control small-font" id="Email" name="cs_group">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="Email" class="col-sm-4 col-form-label small-font">&nbsp&nbsp&nbsp&nbsp&nbspขอบข่ายเนื้อหา</label>
                            <div class="col-sm-7">
                                <input type="text" value="<?=$row['cs_detail']?>" class="form-control small-font" id="Email" name="cs_detail">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="Email" class="col-sm-4 col-form-label small-font">&nbsp&nbsp&nbsp&nbsp&nbspการวัดผลประเมิน</label>
                            <div class="col-sm-7">
                                <input type="text" value="<?=$row['cs_perform']?>" class="form-control small-font" id="Email" name="cs_perform">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="Email" class="col-sm-4 col-form-label small-font">&nbsp&nbsp&nbsp&nbsp&nbspผลที่คาดว่าจะได้รับ</label>
                            <div class="col-sm-7">
                                <input type="text" value="<?=$row['cs_reward']?>" class="form-control small-font" id="Email" name="cs_reward">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="inputPassword" class="col-sm-4 col-form-label">&nbsp&nbsp&nbsp&nbsp&nbspyear</label>
                            <div class="col-sm-5">
                                    <select class="col-sm-8 custom-select custom-select-sm" name="cs_year" selected="<?=$rs2['cs_year'];?>"> 
                                        <option value="2023">2023</option>
                                        <option value="2022">2022</option> 
                                        <option value="2021">2021</option>
                                    </select>
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                                <label for="" class="col-sm-4 col-form-label">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                            <div class="col-sm-7">
                                <div class="d-grid gap-2"> 
                                    <button type="submit" name="edit_submit_id" class="btn btn-primary btn-sm">ยืนยันเพื่อเพิ่มคอร์ส +</button>
                                </div>
                                <a href="./admin.php" style="color:#3d3d3d;"class="forget_pass_button">กลับไปยังหน้าหลัก</a> 
                            </div>
                        </div>
                        <br>
                    </form>
                    </div>
                </div>
                <br><br>

                <div class="col-3"></div> 
            
            </div>
        </div>
</body>
</html>