
    <div class="second-menu">
        <div class="second-nav-wrap">
                    <div class="mn-btm-li"><a href="<?=site_url('environment');?>">გარემო</a></div>
                    <div class="mn-btm-li"><a href="<?=site_url('direction');?>">მიმართულებები</a></div>
                </div>
                <div class="second-nav-wrap">
                    <div class="mn-btm-li"><a href="<?=site_url('profesors');?>">პროფესორები</a></div>
                    <div class="mn-btm-li"><a href="<?=site_url('model');?>">მოდელი</a></div>
                </div>

    </div>
        <div class="prof-row">
            <div class="prof-cont">
<?php if ( !empty($lecture) ):
        $x = 0;
        foreach ( $lecture as $item ):
        if ( $x%3 == 0 && $x!=0 ):?>
                </div>
             </div>
             <div class="prof-row">
                <div class="prof-cont">
       <?php endif;?> 
            <div class="prof-info">
                <a href="<?php echo site_url('lecture/'.$item['id']); ?>"><img src="<?php echo base_url('img/img/'.$item['pic_name']); ?>" alt="Lecturer"></a>
                <h3><?=$item['name']; ?></h3>
                <h6><?=$item['direction']; ?></h6>
            </div>
        <?php  $x++;
        endforeach;
    endif; ?>
            </div>
        </div>
   