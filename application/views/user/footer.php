<footer class="alt-footer">
    <div class="footer-container" >
        <a href="#"><img class="footer-img" src="<?php echo base_url('img/bg/geocell.png'); ?>" alt=""></a>
        <a href="#"><img class="footer-img" src="<?php echo base_url('img/bg/leavingstone.png'); ?>" alt=""></a>
        <a href="#"><img class="footer-img" src="<?php echo base_url('img/bg/gau.png'); ?>" alt=""></a>
        <a href="#"><img id="inovation" class="footer-img" src="<?php echo base_url('img/bg/gov.png'); ?>" alt=""></a>
    </div>
</footer>

<!--<footer class="mn-footer">-->
<!--<ul class="mn-ftr-ul">-->
<!--<li class="mn-ftr-li"><a href="#"><img src="img/bg/geocell.png" alt=""></a></li>-->
<!--<li class="mn-ftr-li"><a href="#"><img src="img/bg/leavingstone.png" alt=""></a></li>-->
<!--<li class="mn-ftr-li"><a href="#"><img src="img/bg/gau.png" alt=""></a></li>-->
<!--<li class="mn-ftr-li"><a href="#"><img src="img/bg/gov.png" alt=""></a></li>-->
<!--</ul>-->
<!--</footer>-->
</div>
</body>


<script src="<?php echo base_url('js/jquery.mCustomScrollbar.js'); ?>"></script>
<script>
    $(document).ready(function(){
        //$('.form-wrapper').css('height', $(window).height());
        $("nav.mn-menu").mCustomScrollbar({
            theme:"minimal"
        });
    });
    $(document).ready(function() {
        $(".tabs-menu a").click(function(event) {
            event.preventDefault();
            $(this).parent().addClass("current");
            $(this).parent().siblings().removeClass("current");
            var tab = $(this).attr("href");
            $(".tab-content").not(tab).css("display", "none");
            $(tab).fadeIn();
        });
    });
    $(document).ready(function() {
        $('.img-area.equpment').click(function(event){
            $('.equpment-wrp').fadeOut(50);
            event.preventDefault();
            $('.flip-container').removeClass('hover');
            var id = $(this).data('item');
            var check = $(this).find('.flip-container');
          

            $.getJSON('http://localhost/geolabwebpage/php/pages/ajax/'+id,function(data){
                $('.equpment-wrp').fadeIn(300);        
                check.addClass('hover');
                $('#overlay').css('display','block');
                var html1 = '<span>მოგვაწოდა</span><img src="./img/equipment/sponsor/'+data.sponsor+'.jpg">';
                var html2 = '<img src="./img/equipment/'+data.image+'">';
                var html3 = data.description;
               $('.equpment-col:eq(0)').html(html1);
               $('.equpment-col:eq(1)').html(html2);
               $('.equpment-col:eq(2)').html(html3);
            });
        });
        $('#cross,#overlay').on('click',function(event){
            event.preventDefault();
            $('#overlay').css('display','none');
            $('.equpment-wrp').fadeOut();
            $('.flip-container').removeClass('hover');
        })
    });
    $(document).ready(function() {
        $('#news_load').click(function(event){
            var offset = $('div#news_load').data('offset');
            $.getJSON('http://localhost/geolabwebpage/php/pages/ajax_news/'+offset, function(data){
                console.log(data);
                if ( data[1] == 'none'){
                    $('div#news_load').css({'background':'none',
                        'box-shadow':'none',
                        'color':'rgba(59, 62, 104, 0.81)',
                        'cursor':'auto'})
                    .text('სიახლეები აღარაა').before(data[0]).data('offset', offset+=3);
                }else{
                
                    $('div#news_load').before(data[0]).data('offset', offset+=3);
                }
            });
        });
    });
    $(document).on('mouseover','.article-detail > a',function(){
        var hoverSelector = $(this).closest(':has(.img-txt-wrp span img)').find('.img-txt-wrp>span>img');
            hoverSelector.addClass("img-hover2");
        }).on('mouseout','.article-detail > a',function(){
            var hoverSelector = $(this).closest(':has(.img-txt-wrp span img)').find('.img-txt-wrp>span>img');
            hoverSelector.removeClass("img-hover2");   
          });
    $(document).ready(function(){
        $('.map-outer button').on('click',function(){
            $('.map-outer').fadeOut(700);
        });
    });
    
</script>
</html>
