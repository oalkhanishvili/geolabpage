
    <div class="txt-wrp model">


        <h1>სიახლეები</h1>

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

    <div class="txt-content detail-news">

        <div class="img-area detail-news">

            <div class="img-txt-wrp detail-news">
                <img src="<?=base_url('img/img/'.$news['image']);?>" alt="image">
            </div>


        </div>

        <article class="article">
         <span class="news-title"><?=$news['title'];?></span><br>
         <span class="date-detail"><?=date_format(date_create($news['date']),'d/m/y');?></span>
            <div class="article-area">
                <?=$news['content'];?>
            </div>
        </article>
    </div>
