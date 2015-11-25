$(document).ready(function () {

   // show user menu
    $('.mn-lgn').on('click', function () {
        $('.form-wrapper').animate({left: "0"}, 200);
    });

    // close form
    $('.form-close').on('click', function () {
        var width = $('.form-wrapper').width();
        width = (-1)*(width);
        if(width > -700) width=-700;
        $('.form-wrapper').animate({left: ""+width}, 200);
    });

//  show menu
    $('.user-mn').on('click', function () {
        $('.login-form').hide();
        $('.mn-menu').fadeIn(300);
        $(this).addClass('user-btn-acrive');
        $('.user-btn').removeClass('user-btn-acrive');
    });

    $('.mn-show').on('click', function () {
        $('.form-wrapper').animate({left: "0"}, 200);
        $('.login-form').hide();
        $('.mn-menu').fadeIn(300);
        $('.user-mn').addClass('user-btn-acrive');
        $('.user-btn').removeClass('user-btn-acrive');
    });
//
    $('.user-btn').on('click', function () {
        $('.mn-menu').hide();
        $('.login-form').fadeIn(300);
        $(this).addClass('user-btn-acrive');
        $('.user-mn').removeClass('user-btn-acrive');
    });






});
