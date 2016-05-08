$(document).ready(function() {
    var $container = $('.projects-grid');
    // use imagesLoaded, instead of window.load
    $container.imagesLoaded( function() {
        $container.isotope({
            itemSelector: '.project-grid-item',
        });
    });
});
