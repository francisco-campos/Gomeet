$(document).ready(function(){

    $(function () {
        var $win = $(window);

        $win.scroll(function () {
            var posicion = $win.scrollTop();

            if(posicion > 100) {
                $('.navbar-fixed-top').css('opacity','1');
                $('.navbar-fixed-top').css('border-bottom','1px solid #000');
            }
            else {
                $('.navbar-fixed-top').css('opacity','0.7');
                $('.navbar-fixed-top').css('border-bottom','0');
            }
        });

    });

    $.fn.extend({
        animateCss: function (animationName) {
            var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
            $(this).addClass('animated ' + animationName).one(animationEnd, function() {
                $(this).removeClass('animated ' + animationName);
            });
        }
    });


    $("a.fancybox").fancybox({
      'autoSize' : true,
      'type'     : 'iframe',
      'showCloseButton' : false,
      'scrolling' : 'no',
    });

});
