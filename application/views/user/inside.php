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
    <script src="<?php echo base_url('js/scripts.js'); ?>"></script>


    <style>
        @media (max-width: 600px){
            .mn-header input {
                height: 45px;
            }
        }

        body{
            overflow-y: overlay;
            overflow-x: hidden;
        }
    </style>
</head>
<body>
<div class="content" style="overflow-x: hidden">

	<div class="mn-wrp ins-wrp">
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
				<input type="text" >
			</nav>

		</header>

		<div class="ins-cont">
			<div class="in-img ins-top" style="<?='background:url('.base_url('img/img/'.$lecture['pic_name']).') no-repeat 50% 50%;background-size: cover;';?>"></div>
			<div class="in-prtf ins-top">
				<ul class="sec-fiv-ul sec-fiv-ul-ins">
					<?php if ( !empty($project) ): ?>
				<?php foreach ( $project as $item ): ?>
					<li class="sec-fiv-li sec-fiv-li-ins">
						<a href="<?php echo site_url('pages/projects/'.$item['id']); ?>">
              <span style="position:relative; width: 118px;
    height: 118px;
    display: inline-block;
    border-radius: 50%;
    box-shadow: 0 0 0 11px rgba(117, 129, 175, 0.4);">
							<img src="<?php echo base_url('img/img/'.$item['project_image']); ?>" alt="Lecturer">
              </span>
							<h3><?php echo $item['project_name']; ?></h3>
						</a>
					</li>
				<?php endforeach; ?>
			<?php endif; ?>
				</ul>
			</div>
			<div class="in-nm-soc ins-bott">
				<h3 class="ins-prof"><?=@$lecture['direction'];?></h3>
				<h3 class="ins-prof-name"><?=@$lecture['name'];?></h3>

				<ul class="ins-bt-lf-ul">
				<?php
				if ( !empty($lecture['social']) ):
				$hashmap = array(
					'facebook' => base_url('img/icons/face.png'),
					'linkin' => base_url('img/icons/in.png')
					);

                    foreach ( $lecture['social'] as $value ){
                        list($k,$v) = explode('*=*', $value);
                        $list[][$k] = $v;
                    }

				foreach ( $list as $val ){
					foreach ( $val as $key => $item){?>
						<li class="ins-bt-lf-li">
						<a href="<?php echo $item; ?>" target="_blank">
						<img src="<?php echo $hashmap[$key]; ?>" alt="behance">
						</a></li>
					<?php }
				}
				endif;
				?>
				</ul>
			</div>
			<div id="desc" class="in-nm-inf ins-bott">

				<p class="ins-bt-rig-p">
					<?=@$lecture['bio'];?>
				</p>

			</div>
		</div>

        <div class="mn-menu-btm">
            <div class="mn-btm-ul">
                <div class="second-nav-wrap">
                    <div class="mn-btm-li"><a href="<?=site_url('environment');?>">გარემო</a></div>
                    <div class="mn-btm-li"><a href="<?=site_url('direction');?>">მიმართულებები</a></div>
                </div>
                <div class="second-nav-wrap">
                    <div class="mn-btm-li"><a href="<?=site_url('profesors'); ?>">პროფესორები</a></div>
                    <div class="mn-btm-li"><a href="<?=site_url('model');?>">მოდელი</a></div>
                </div>
            </div>
        </div>

	</div>
</div>
</body>


<style>
    @media (max-width: 800px) {
        .mn-menu-btm{
            display: none;
        }

    }

</style>
<script src="<?php echo base_url('js/jquery.mCustomScrollbar.js'); ?>"></script>

<script>
    $(document).ready(function(){
        //$('.form-wrapper').css('height', $(window).height());
        $("nav.mn-menu").mCustomScrollbar({
            theme:"minimal"
        });
        $("#desc").mCustomScrollbar({
            theme:"minimal"
        });
    });
</script>
</html>
