<?php get_the_header() ?>
<div class="container-fluid">
    <div class="video_row row text-center">
        <video class="video_background" preload="auto" autoplay loop muted  style="background: url(<?php echo bloginfo('template_directory') ;?>/images-videos/BM.mp4) center center no-repeat;">
            <source src=<?php echo bloginfo('template_directory');?>/images/video.mp4 type="video/mp4">
        </video>
        <div id="video-text">
            <div class="titre pol2"><strong>MOVE</strong><span class="pol3">N</span>epal</div>
            <div class="text-middle">
                <span style="font-size:0.3em">We help social project in Nepal </span> <br> <span style="font-size:0.3em"> by sending you there!</span><br>
            </div>
            <div class="fleche">
                <a href="content"><img class="down-arrow" src="<?php echo bloginfo('template_directory');?>/images/down-arrow.png" alt="down_arrow"></a>
            </div>
        </div>
    </div>
</div>