
$(document).ready(function () {
    $('.dropdown-menu li a').removeClass('current');
    $('.dropdown-menu li.current a').addClass('current');
    $('.dropdown-menu li a,.gallery_work__see_all').click(function () {
        $('.gallery_work li').removeAttr('id');
        $('.gallery_work li').css({display:'block'});
        $('.gallery_work li img').css({'transform':'translate(0,0)','-webkit-transform':'translate(0,0)',opacity:1});
        $('.dropdown-menu li a.current').removeClass('current');
        $(this).addClass('current');
        var val = $(this).html();
        $('.category').html(val);

        $('.gallery_work__see_all').click(function () {
            $('.dropdown-menu li.current a').addClass('current');
            var vis_all = $('.dropdown-menu li.current a').html();
            $('.category').html(vis_all);
        });
    });

    var fval = $('input[type="text"],input[type="email"],textarea').val('');
    fval = ('');
    hash = window.location.hash;

    var home = $('#navbar').find('li a:first-child').attr('href');

    window.location.hash = home;

     $('body').on('activate.bs.scrollspy', function (e) {
         var hash = $(e.target).find('a').attr('href');
         if(history.pushState) {
             history.pushState({}, "", hash);
         } else {
             // Uncomment this for ie8 or ie9
             //window.location.hash = hash;
         }

         var config = {
             enter: 'top',
             move: '40px',
             over: '0.16s',
             reset: true,
             init: true
         };
         window.scrollReveal = new scrollReveal( config );

     });
    $(".nav li a,a.navbar-brand").click(function () {
        var selected = $(this).attr('href');
        $.scrollTo(selected, 500, {offset:-90});
        if($(window).width()<=979){
            $.scrollTo(selected, 500, {offset:-50});
        }
    });

    $('#navbar li a').click(function () {
        if ($(window).width() <= 979) {
            $('.collapse').removeClass('in').addClass('collapse').height(0);
        }
    })
});
$(window).load(function () {
    $('#owl-example').owlCarousel({
        rewindNav:true,
        itemsDesktop:false,
        itemsDesktopSmall:false,
        itemsTablet:false,
        items:1,
        responsiveRefreshRate:5,
        pagination:false,
        autoPlay:3000,
        navigation:true,
        slideSpeed:1000
    });
    $('.parallax').parallax({
        speed : 0.7
    });
    function parallax(){
        var scrolled = $(window).scrollTop();
        $('.item img').css('top', (scrolled * 0.3) + 'px');
    }
    $(window).scroll(function(){
        parallax();
    });

});

