
    <div class="txt-wrp model">


        <h1>პროექტები</h1>

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
        <div class="project-tab">
            <ul class="tabs-menu">
                <li class="current"><a href="#tab-1">ლექტორები</a></li>
                <li><a href="#tab-2">სტუდენტები</a></li>
            </ul>
        </div>
        <div id="tab-1" class="tab-content">
            <?php if ( !empty($projects) ): ?>
            <?php foreach ( $projects as $item ): ?>
            <div class="img-area project">
                <div class="img-txt-wrp">
                   <span class="projects-title">
                     <a href="<?=site_url('pages/projects/'.$item['id']);?>">
                        <img src="<?=base_url('img/img/'.$item['project_image']);?>" alt="image">
                        <span><?=$item['project_name'];?></span>
                        <div class="target"><?=$item['project_description'];?></div>
                      </a>
                    </span>
                   <!-- <span class="projects-lecture-image">
                    <img  src="<?=base_url('img/img/'.$item['pic_name']);?>" alt="image"/>
                        <span><a href="<?=site_url('lecture/'.$item['lec_id']);?>" style="text-decoration:none;"><?=$item['name']?></a></span>
                    </span> -->
                </div>
            </div>
                    <?php endforeach; ?>
        <?php endif; ?>
        </div>
        <div id="tab-2" class="tab-content">

        </div>
    </div>
