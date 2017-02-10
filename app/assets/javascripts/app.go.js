$(document).ready(function(){

    $(function () {
        var $win = $(window);

        $win.scroll(function () {
            var posicion = $win.scrollTop();

            if(posicion > 100) {
                $('.navbar-fixed-top').css('border-bottom','1px solid #CCC');
            }
            else {
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
      'showCloseButton' : false,
      'scrolling' : 'auto',
      'height' : '85%',
      'type' : 'iframe'
    });

});
