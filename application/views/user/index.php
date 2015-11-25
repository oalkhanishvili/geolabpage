 <div class="mn-wrp">

    <div style='position: absolute;width: 100%;height: 100%;z-index: 3;background-color: rgba(143, 98, 154, 0.74);'> </div>
    <div id="video-container">
        <video autoplay loop class="fillWidth">
            <source src="videos/vid.mp4" type="video/mp4"/>
            <source src="videos/vid.ogv" type="video/ogv"/>
            <source src="videos/vid.WebM" type="video/webm"/>
            Your browser does not support the video tag. I suggest you upgrade your browser.
        </video>
    </div><!-- end video-container -->


    <div>
        <h1 class="mn-title">
            DESIGN IS NOT JUST WHAT IT LOOKS LIKE AND FEELS LIKE. DESIGN IS HOW IT WORKS.
            <span>steve jobs 1955-2011</span>
        </h1>
    </div>
    <nav class="mn-menu-btm">
        <div class="mn-btm-ul">
            <div class="second-nav-wrap">
                <div class="mn-btm-li"><a href="<?=site_url('environment');?>">გარემო</a></div>
                <div class="mn-btm-li"><a href="<?=site_url('direction'); ?>">მიმართულებები</a></div>
            </div>
            <div class="second-nav-wrap">
                <div class="mn-btm-li"><a href="<?=site_url('profesors'); ?>">პროფესორები</a></div>
                <div class="mn-btm-li"><a href="<?=site_url('model');?>">მოდელი</a></div>
            </div>
        </div>
    </nav>

</div>
    <?php if ( !empty($project) ):
            $x = 1;
            foreach ( $project as $item ):  ?>
<section class="sec mn-sc sec-<?=$x; ?>">
    <div class="sec-cnt-wrp">

        <a href="<?=$item['project_url'];?>" target="_blank">

            <img src="<?=base_url('img/img/'.$item['project_image']);?>" alt="Lecturer">
            <br>
            <h3><?=$item['project_name']; ?></h3>

            <h6><?=mb_substr($item['project_description'],0,20,'utf-8').'...'; ?></h6>
        </a>

    </div>
</section>
        <?php $x++;
            endforeach;
        endif; ?>
<section class="sec-for">
    <a href="<?php echo site_url('profesors'); ?>">პროფესორები</a>
</section>
<section class="sec sec-fiv">
    <!--<div class="parallax-window" data-parallax="scroll" data-image-src="img/bg/sc-5.png"></div>-->
    <div class="sec-fiv-ul">
        <?php if ( !empty($project) ):
            foreach ( $lecture as $item ):  ?>
        <div class="sec-fiv-li">
            <a href="<?=site_url('lecture/'.$item['id']); ?>">
                <span>
                    <img src="<?=base_url('img/img/'.$item['pic_name']);?>" alt="Lecturer">
                </span>
                <h3><?=$item['direction'];?></h3>
                <h6><?=$item['name'];?></h6>
            </a>
        </div>
           <?php endforeach;
        endif; ?>
    </div>
</section>
<section class="sec-six">
    <div class="sec-six-ttl">
        <h3>სად არის ჯეოლაბი?</h3>
    </div>

    <div class="map-outer">
        <button>იპოვნე რუკაზე</button>
        <h6>ჯეოლაბი მდებარეობს ქართულ ამერიკული უნივერსიტეტის (GAU) შენობაში: მერაბ ალექსიძის 8.</h6>
    </div>

    <div id="map-canvas"></div>
</section>
