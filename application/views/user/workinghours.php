
    <div class="txt-wrp model">


        <h1>მოდელი</h1>

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

        <div class="img-area">

            <div class="img-txt-wrp">
                <img src="<?=base_url('/img/img/'.$item['image']);?>" alt="image">

                <h5>
                    <span><?=$item['title'];?></span>
                </h5>
            </div>


        </div>

        <article class="article">
            <?=$item['content'];?>
        </article>




    </div>
