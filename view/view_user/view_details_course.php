<?php
    session_start();

    if(!isset($_SESSION['user_login'])){
        header("location: ../../signin.php");
    }

    $cs_id = $_GET['cs_id'];

    include_once '../../model/connect.php';
    include_once '../../model/method_stmt.php';
    $obj = new method_stmt();
    $rs2 = $obj->getCourseDetails($cs_id);
    
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
        .alert {
            height: 10%;   
            text-align:center; 
        }
        .details-group {
            background-color:white;
            border-radius:20px;
        }
        .detail-text{
            color:#4b4b4b;
        }
        
    </style>
</head>
<body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <img width="30" src="images/Logo.png" alt="">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="user.php">Home</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Dropdown
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#">Action</a></li>
                    <li><a class="dropdown-item" href="#">Another action</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
                </li>
                <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            <form action="view_search_name.php" method="POST" class="d-flex">
                <input class="form-control me-2" name="search_name" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button> 
            </form>
            </div>
        </div>
        </nav>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-3"> </div>
                <div class="col-6 details-group">
                <br>
                <h6>รายละเอียดของคอร์ส <i class="bi bi-book text-sm" ></i></h6>
                <hr>
                    <img width="100%" src='<?= $rs2['cs_img']?>'>
                        <br><br>
                        <h5><?= $rs2['cs_name']?></h5>
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">รายละเอียด</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Reviews</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Contact</button>
                        </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <br>
                                <h6><b>ช่วงเวลาเรียน</b></h6>
                                <p class="detail-text"><?php echo"&nbsp&nbsp&nbsp&nbsp".$rs2['cs_range_date']."";?></p><br>
                                <h6><b>วัตถุประสงค์</b></h6>
                                <p class="detail-text"><?php echo"&nbsp&nbsp&nbsp&nbsp ".$rs2['cs_fcourse']."";?></p><br>
                                <h6><b>ระยะเวลาของหลักสูตร</b></h6>
                                <p class="detail-text"><?php echo"&nbsp&nbsp&nbsp&nbsp".$rs2['cs_time']."";?></p><br>
                                <h6><b>สถานที่</b></h6>
                                <p class="detail-text"><?php echo"&nbsp&nbsp&nbsp&nbsp".$rs2['cs_location']."";?></p><br>
                                <h6><b>กลุ่มเป้าหมาย</b></h6>
                                <p class="detail-text"><?php echo"&nbsp&nbsp&nbsp&nbsp".$rs2['cs_group']."";?></p><br>
                                <h6><b>ขอบข่ายเนื้อหา</b></h6>
                                <p class="detail-text"><?php echo"&nbsp&nbsp&nbsp&nbsp".$rs2['cs_detail']."";?></p><br>
                                <h6><b>การวัดผลประเมิน</b></h6>
                                <p class="detail-text"><?php echo"&nbsp&nbsp&nbsp&nbsp".$rs2['cs_perform']."";?></p><br>
                                <h6><b>ผลที่คาดว่าจะได้รับ</b></h6>
                                <p class="detail-text"><?php echo"&nbsp&nbsp&nbsp&nbsp".$rs2['cs_reward']."";?></p>
                                <hr>
                                        <div class="d-grid gap-2">
                                                <a href="view_reg_course.php?cs_id=<?= $rs2['cs_id']?>" class="btn btn-primary btn-sm">สมัครคอร์สเรียน <i class="bi bi-pencil-square"></i></a>
                                        </div>
                                <p class="x-small-font">คอร์สถูกลงเมื่อปี <?=$rs2['cs_year']?></p>
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">coming soon!<br></div>
                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">coming soon!<br></div>
                        </div>
                </div>
                <div class="col-3"> </div>


        </div>
        </div>
        <br><br>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#"></a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="#"></a>
                </li>
                <li class="nav-item dropdown">
                <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    
                </a>
                <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
                </li>
                </li>
                <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
                </li>
            </ul>
                <form action="../../controller/con_logout.php">
                    <input style="font-size:small;" type="submit" class="btn" value="ออกจากระบบ"><i style="font-size:small;" class="bi bi-box-arrow-right"></i>   
                </form>
            </div>
        </div>
        </nav>
</body>
</html>