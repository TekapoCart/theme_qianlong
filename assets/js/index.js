function startSlider () {
    var imgEl = $('.bxslider > div img').first();
    var slider, slideWidth, slideHeight;
    var slideMargin = 75;
    if (typeof imgEl !== 'undefined') {

        slideHeight = $(window).height();
        slideWidth = imgEl.width() / imgEl.height() * slideHeight;
        if (slideWidth < $(window).width()) {
            slideWidth = $(window).width();
        }

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
                $('.bx-viewport').css('height', $(window).height());
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