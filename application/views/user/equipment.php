
    <div class="txt-wrp model">


        <h1>აღჭურვილობა</h1>

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
            <ul >
                <li >ჩვენ განკარგულებაშია</li>
            </ul>
        </div>
        
        <div class="equpment-wrp" style="display:none;">

            <span id="cross">
            <span class="first-cross" style="cursor: pointer;"></span>
            <span class="second-cross" style="cursor: pointer;"></span></span>
            <div class="equpment-col"><span>მოგვაწოდა</span><img src="./img/img/geocell.png"></div>
            <div class="equpment-col"><img src="./img/img/mac.png"></div>
            <div class="equpment-col">2.5GHz dual-core Intel Core i5
                                        Turbo Boost up to 3.1GHz 
                                        4GB 1600MHz memory
                                        500GB 5400-rpm hard drive
                                        Intel HD Graphics 4000 
                                        Built-in battery (7 hours)
            </div>
        </div>
        <?php if ( !empty($equipment) ): ?>
            <?php foreach ( $equipment as $item ): ?>
        <div class="img-area equpment" data-item="<?=$item['id'];?>">
                <div class="img-txt-wrp"> 
                        <div class="flip-container" ontouchstart="this.classList.toggle('flip');">
                            <div class="flipper">
                            <span class="equpment">
                                <div class="front">   
                                        <span><?=$item['num'];?>X</span>
                                        <div class="target"><?=$item['model'];?></div>
                                </div>
                                    </span>
                                <div class="back">
                                        <img src="<?=base_url('img/equipment/'.$item['image']);?>" alt="image" style="background:none;">
                                </div>
                            </div>
                        </div>
                </div>
        </div>
            <?php endforeach; ?>
        <?php endif; ?>
    </div>
    
<div id="overlay" class="overlay"></div>