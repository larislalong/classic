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
});