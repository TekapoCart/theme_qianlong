function startSlider () {
    var el = $('.bxslider');
    var imgEl = $('.bxslider > div img').first();
    var slider, slideWidth;
    var dataControl = el.data('control') === true ? true : false;
    var dataPager = el.data('pager') === true ? true : false;
    var slideMargin = (dataControl !== true && dataPager !== true) ? 75 : 0;
    if (typeof imgEl !== 'undefined') {

        slideWidth = $(window).width();
        slideHeight = imgEl.height() / imgEl.width() * (slideWidth + slideMargin);

        slider = $('.bxslider').bxSlider({
            auto: true,
            pager: dataPager,
            touchEnabled: false,
            controls: dataControl,
            slideWidth: slideWidth,
            slideMargin: slideMargin,
            pause: 10000,
            speed: 1000,
            mode: 'fade',
            onSliderLoad: function() {
                if ($('.bxslider').data('control') !== true && $('.bxslider').data('pager') !== true) {
                    $('.bxslider > div img').css('animation', 'shift-slider 11s infinite');
                }
                $('.bx-viewport').css('height', slideHeight);
            }
        });
        $('.bxslider > div, .bxslider > div img').css('width', slideWidth + slideMargin);
    }

    return slider;
}

(function() {

    // bxslider
    var slider;
    slider = startSlider();

    $(window).resize(function(){
        if (typeof slider !== 'undefined' && typeof slider.destroySlider === "function") {
            slider.destroySlider();
            slider = startSlider();
        }
    });

})();