$(document).ready(function() {
    var $container = $('.grid');
    // use imagesLoaded, instead of window.load
    $container.imagesLoaded( function() {
        $container.isotope({
            itemSelector: '.grid-item',

        });
    });
});
