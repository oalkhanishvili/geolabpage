
    <div class="txt-wrp model">


        <h1>კონტაქტი</h1>

        <nav class="mn-menu-btm">
            <div class="mn-btm-ul">
                <div class="second-nav-wrap">
                    <div class="mn-btm-li"><a href="<?=site_url('environment');?>">გარემო</a></div>
                    <div class="mn-btm-li"><a href="<?=site_url('direction');?>">მიმართულებები</a></div>
                </div>
                <div class="second-nav-wrap">
                    <div class="mn-btm-li"><a href="<?=site_url('profesors');?>">პროფესორები</a></div>
                    <div class="mn-btm-li"><a href="<?=site_url('model');?>">მოდელი</a></div>
                </div>
            </div>
        </nav>

    </div>

    <div class="txt-content">
    <?php if ( !empty($direction) ):
            foreach ( $direction as $item ): ?>
        <div class="img-area">

            <div class="img-txt-wrp">
                <img src="img/img/txt-1.jpg" alt="image">

                <h5>
                    <span><?=$item['title'];?></span>by George Luis
                </h5>
            </div>


        </div>

        <article class="article">
            <p>
                <?=$item['content'];?>
            </p>
        </article>
    <?php endforeach;
        endif; ?>
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



    </div>
