function startSlider () {
    var imgEl = $('.bxslider > div img').first();
    var slider, slideWidth;
    var slideMargin = 75;
    if (typeof imgEl !== 'undefined') {

        slideWidth = $(window).width();
        slideHeight = imgEl.height() / imgEl.width() * slideWidth;

        slider = $('.bxslider').bxSlider({
            auto: true,
            pager: false,
            touchEnabled: false,
            controls: false,
            slideWidth: slideWidth,
            slideMargin: slideMargin,
            pause: 10000,
            speed: 1000,
            mode: 'fade',
            onSliderLoad: function() {
                $('.bxslider > div img').css('animation', 'shift-slider 11s infinite');
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
        if (typeof slider !== 'undefined') {
            slider.destroySlider();
            slider = startSlider();
        }
    });

})();