<!DOCTYPE html>
<html>
<head>
    <title>GeoLab</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">

    <link rel="stylesheet" href="<?php echo base_url('css/jquery.mCustomScrollbar.css'); ?>" >
    <link rel="stylesheet" href="<?php echo base_url('css/style.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('fonts/fonts.css'); ?>">
    <script src="<?php echo base_url('js/jquery.js'); ?>"></script>
    <script src="<?php echo base_url('js/parallax.min.js'); ?>"></script>
    <script src="<?php echo base_url('js/scripts.js'); ?>"></script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <script src="<?php echo base_url('js/google_map.js'); ?>"></script>
    <style>
        .mn-wrp {

            overflow: hidden;
        }
    </style>
</head>
<body>
<div class="content">
<!-- registration & login -->
<div  class="form-wrapper">
    <div class="form-header">
        <button class="user-btn user-btn-acrive"></button>
        <button class="user-mn"></button>
        <button class="form-close"></button>
    </div>


    <div class="login-form">
        <h1>ავტორიზაცია</h1>
        <input type="text" placeholder="სახელი">
        <input type="password" placeholder="პაროლი">
        <input type="submit" value="ავტორიზაცია">
        <a href="#">პაროლის გახსენება</a>
    </div>

    <nav class="mn-menu">
        <ul class="mnu-ul">
            <li class="mnu-li">
                <a href="#"><h1>ლაბოლატორია</h1></a>

                <ul class="sub-ul">
                    <li class="sub-li"><a href="<?=site_url('environment');?>">გარემო</a></li>
                    <li class="sub-li"><a href="<?=site_url('philosophy');?>">ფილოსოფია</a></li>
                    <li class="sub-li"><a href="<?=site_url('equipment');?>">აღჭურვილობა</a></li>
                    <li class="sub-li"><a href="<?=site_url('workinghours');?>">მუშაობის განრიგი</a></li>
                </ul>

            </li>
            <li class="mnu-li">
                <a href="#"><h1>სწავლება</h1></a>

                <ul class="sub-ul">
                    <li class="sub-li"><a href="<?=site_url('direction');?>">მიმართულებები</a></li>
                    <li class="sub-li"><a href="<?=site_url('profesors');?>">პროფესორები</a></li>
                    <li class="sub-li"><a href="<?=site_url('model');?>">მოდელი</a></li>
                    <li class="sub-li"><a href="<?=site_url('');?>">განრიგი</a></li>
                    <li class="sub-li"><a href="<?=site_url('price');?>">საფასური</a></li>
                </ul>

            </li>
            <li class="mnu-li">
                <a href="<?=site_url('news');?>"><h1>სიახლეები</h1></a>
            </li>
            <li class="mnu-li">
                <a href="#"><h1>ნამუშევრები</h1></a>

                <ul class="sub-ul">
                    <li class="sub-li"><a href="<?=site_url('projects');?>">ლექტორების ნამუშევრები</a></li>
                    <li class="sub-li"><a href="<?=site_url('projects');?>">სტუდენტების ნამუშევრები</a></li>
                </ul>
            </li>
            <li class="mnu-li">
                <a href="<?=site_url('');?>"><h1>კონტაქტი</h1></a>
            </li>
            <li class="mnu-li">
                <a href="<?=site_url('');?>"><h1>ონლაინ მაილ ფორმა</h1></a>
            </li>
        </ul>
    </nav>

</div>


    <header class="mn-header">

        <nav class="mn-menu-wrapper">

            <ul class="mn-ul">
                <li class="mn-li mn-show"></li>
                <li class="mn-li mn-lgn"></li>
            </ul>
            <a class="header-click" href="<?=site_url('');?>"></a>
            <input type="text">
        </nav>
        
    </header>