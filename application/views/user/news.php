
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

    <?php if ( !empty($news) ): ?>
    <div class="txt-content">
        <?php foreach ( $news as $item ): ?>
    <div class="txt-content news">
        <div class="img-area">
            <div class="img-txt-wrp">
                <span style="overflow:hidden">
                    <img src="<?=base_url('img/img/'.$item['image']);?>" alt="image" class="img-hover1">
                </span>
            </div>
        </div>
        <article class="article">
        <div class="date"><span><?=date_format(date_create($item['date']),'j');?></span><?=date_format(date_create($item['date']),'M');?></div>
         <span class="news-title"><?=$item['title'];?></span>
            <div class="article-area">
                <?=mb_substr($item['content'],0,250,'utf-8').'...'; ?>
            </div>
            <div class="article-detail">
                <a href="<?=site_url('news/'.$item['id']);?>">მეტის წაკიხვა</a>
            </div>
        </article>
    </div>
        <?php endforeach; ?>
        <div id="news_load" data-offset="3">ჩათვირთვა</div>
        </div>
    <?php endif; ?>
