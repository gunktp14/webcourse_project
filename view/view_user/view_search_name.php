<?php
    session_start();

    if(!isset($_SESSION['user_login'])){
        header("location: ../../signin.php");
    }

    if(!isset($_POST['search_name'])){
        header("location: ../../signin.php");
    }

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
            <form action="" method="POST" class="d-flex">
                <input class="form-control me-2" name="search_name" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button> 
            </form>
            </div>
        </div>
        </nav>
        <br>
        <div class="container">
            <b><h6>Course ของเราทั้งหมด <i class="bi bi-book text-sm" ></i></h6></b>
            <hr>
            <div class="row my-3">
                <?php 
                include_once '../../model/connect.php';
                include_once '../../model/method_stmt.php';
                $obj = new method_stmt();
                if(empty($_POST['search_name'])){
                    $rs2 = $obj->getCourse();
                }else {
                    $search_name = $_POST['search_name']; 
                    $rs2 = $obj->searchName($search_name); 
                }
                if($rs2 == true){
                    foreach($rs2 as $row){
                        ?>
                        <div class="col-lg-3 col-md-6 mb-4">
                            <div class="card h-100">
                                <a href="view_details_course.php?cs_id=<?= $row['cs_id']?>"><img class="card-img-top" src='<?= $row['cs_img']?>'alt=""></a>
                                <div class="card-body">
                                    <h4 class="card-title">
                                        <p style="font-size:15px;"><?= $row['cs_name']?></p>
                                    </h4>
                                    <p style="font-size:10px;color:#656565;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt reprehenderit ea iure, rerum debitis ab voluptate delectus doloribus</p>
                                    <h6><?= $row['cs_wallet']?> บาท</h6>
                                </div>
                            </div>
                        </div>
                <?php
                    }
                }
                ?>

            </div>
        </div>

        <br><br><br><br><br><br><br><br><br><br><br><br>

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