jQuery(document).ready(function() {
    function checkScroll() {

        var startY = jQuery('.video_row').height(); //The point where the navbar changes in px

        if (jQuery(window).scrollTop() > startY) {
            jQuery('.container1').addClass("scrolled");
        } else {
            jQuery('.container1').removeClass("scrolled");
        }
    }
    if (jQuery('.container1').length > 0) {
        jQuery(window).on("scroll load resize", function () {
            checkScroll();
        });
    }
}
    )

