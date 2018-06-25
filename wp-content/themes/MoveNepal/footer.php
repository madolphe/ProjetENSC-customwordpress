		
<div class="container-fluid">
        <footer>
            <div class="row">
                <div class="col-md-3 border-right footer_div">
                    <div class="container-fluid">
                        <div class="footer_logo"  style="background-image: url(<?php bloginfo('template_directory')?>/images/logo.png")> </div>
                    </div>
                    <div class="footer_police">Budhi Bazar, Lekhnath, Kaski, Pokhara Nepal</div>
                </div>
                <div class="col-md-3 border-right footer_div">
                    <div class="footer_gras"><strong>Move Nepal</strong></div>
                    <div class="footer_police">We help social projects in Nepal <br>by sending YOU right there.</div>

                    <div class="footer_gras">Linked association</div>
                    <div class="footer_gras" href="betterplace.org">
                        <div class="footer_gras">betterplace.<div class="org">org</div></div>
                    </div>
                    <div class="footer_gras">iec</div>




                </div>
                <div class="col-md-3 border-right footer_div"> <?php  //on choisit d'abord quel theme
                    wp_nav_menu(array('theme_location'=>'secondary')); ?></div>
                <div class="col-md-3 footer_div">
                    <div class="footer_police"><a href="mailto:info@move-nepal.org"> info@move-nepal.org </a> </div>
                    <div class="footer_police"><a href="tel:+97761441947">+977 61441947</a></div>
                </div>
            </div>
        </footer>
</div>

        <?php //zone d'écriture des scripts JS
		 wp_footer() ?>
	</body>
</html>

