/*
 * Custom code goes here.
 * A template should always ship with an empty custom.js
 */

jQuery(function($){
    $('#animate-big-svg').load('/arnaudvilleneuve/themes/classic/assets/animationSVG/svg.html');
    $('#animate-env-svg').load('/arnaudvilleneuve/themes/classic/assets/img/picto_environement.svg');
    $('#animate-soc-svg').load('/arnaudvilleneuve/themes/classic/assets/img/picto_social.svg');
    $('#animate-eco-svg').load('/arnaudvilleneuve/themes/classic/assets/img/picto_economie.svg');
    $("#scrolltop-btn").click(function() {
        $('html, body').animate({
            scrollTop: 0
        }, 2000);
    });
    $("#scrollbottom-btn").click(function() {
        $('html, body').animate({
            scrollTop: jQuery('.row.actualites_home.ApRow.has-bg.bg-boxed').offset().top - 220
        }, 2000);
    });

    $('#header .header-nav').scrollToFixed({
        zIndex : 1001
    });
    $('#header .header-top').scrollToFixed({
        preFixed: function() {
            $(this).css('background', '#fff');
            $('#header .header-top .menu').css('margin-top', 50);
            $('#header .header-top').addClass('scrollfixed');
        },
        postFixed: function() {
            $(this).css('background', '');
            $('#header .header-top .menu').css('margin-top', '');
            $('#header .header-top').removeClass('scrollfixed');
        }
    });

    $('#searchbar-top .search-widget form button[type=submit]').on('click', function(e){
		e.preventDefault();
        $('#searchbar-top .search-widget form input[type=text]').slideToggle();
		$(this).toggleClass('opened');
    });
});