
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

    // mobile menu
    let pack;
    if (typeof navigator.scriptList == 'undefined') {
        navigator.scriptList = [];
    }

    pack = [
        '/js/msc/class-msc-sidebar.js',
        '/js/msc/wcl.js',
        '/js/msc/class-msc-select.js'
    ];

    for (var i=-1,l=pack.length;++i<l;) {
        var path = pack[i], script;
        if (navigator.scriptList.indexOf(path) != -1) continue;
        navigator.scriptList.push(path);
        script = document.createElement('script');
        document.head.appendChild(script);
        script.async = true;
        script.src = path;
    }

    if (document.currentScript) {
        pack = document.currentScript;
        pack.parentNode.removeChild(pack);
    }

    // side nav
    showSideNav();
    $(window).resize(showSideNav);

})();