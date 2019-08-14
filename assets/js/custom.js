
var showSideNav = function () {
    if ($(window).width() < 768) {
        $('#side-nav').animate({'opacity':'0'}, 3000);
        $(window).scroll( function(){
            $('#side-nav').stop().css('opacity', 1).animate({'opacity':'0'}, 3000);
        });
    } else {
        $('#side-nav').css('opacity', 1);
        $(window).scroll( function(){
            $('#side-nav').stop().css('opacity', 1);
        });
    }
};

(function() {

    // side nav
    showSideNav();
    $(window).resize(showSideNav);

})();