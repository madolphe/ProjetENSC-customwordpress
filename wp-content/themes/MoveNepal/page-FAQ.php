<!-- page d'exemple que nous n'utiliserons certainement pas mais le mieux serait d'uitiliser l'ID unique de la page -->
<?php get_header(); ?>

<?php
//Création de la loop d'articles:
//Verification de la presence de contenu:
//on utilise le format if/endif pour rester cohérent avec le reste du code wordpress:
if(have_posts()):
	//on va tout d'abord construire la liste de catégories hiérarchisée par l'utilisateur dans l'ACF faqposition
	the_post();
	$faqs_position = get_posts(array(
		'post_type' => 'FAQposition',
		'posts_per_page' => -1, //posts illimités
		'orderby' => 'ID', //classer par ordre alphabetique
	));
	$post=$faqs_position['0'];
	setup_postdata($post);
	//Tant qu'il y a un field on le recupere et on le met dans une liste;
	$listeCategorie=array();
	$listeArrayCategorie=array();
	$i=1;
	while(!empty(get_field($i))){
		array_push($listeCategorie,get_field($i));
		array_push($listeArrayCategorie,array());

		$i=$i+1;
	}
	//on reset la loop:
	rewind_posts();
    //On va ranger les Q/R dans une nouvelle liste selon la hierarchie imposée plus haut:
    //On reset la loop
    while(have_posts()):
		the_post();
    //on met toutes les questions rep dans la variable suivante
		$faqs_posts = get_posts(array(
			'post_type' => 'faqs',
			'posts_per_page' => -1, //posts illimités
			'orderby' => 'ID', //classer par ordre alphabetique
		));
		if ($faqs_posts){
			foreach ( $faqs_posts as $post){
				//On créée des objets avec les QR
			    setup_postdata($post);
                //taille de la liste ie nombre de catégorie
			    $len=count($listeCategorie);
			    for($i=0;$i<$len;$i++){
					$titre=get_the_title();
					if($titre==$listeCategorie[$i]){
						//on vient ranger les post dans les boites les uns à la suite des autres
					    array_push($listeArrayCategorie[$i],$post);
					}
                }
			}
		}
	endwhile;
endif;
?>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-1"></div>
        <div class="col-sm-3 box-category">
            <div class="box-category">
                <div class="panel panel-default">
					<?php
					foreach ($listeCategorie as $categorie){
						echo "<div class=\"panel-body cat\"><a class=\"cat\" href=#".$categorie.">".$categorie."</a></div>";
					}
					?>
                </div>
            </div>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-6 qr">
            <div class="panel-group">
            <?php
				//Histoire d'avoir une liste propre avec les questions/reponses pour faciliter l'affichage:
				rewind_posts();
				//Pour aller prendre la liste de longueur la plus longue dans la liste de liste d'objets wp:
				$max=0;
				for($i=0;$i<$len;$i++){
					if($max<count($listeArrayCategorie[$i])){
						$max=count($listeArrayCategorie[$i]);
					}
				}
				$post=$listeArrayCategorie[$i][$j];
				setup_postdata($post);
				$titre=get_the_title();
				rewind_posts();
				echo $titre;
				for($i=0;$i<$len;$i++){
					for($j=0;$j<$max+1;$j++){
						if($listeArrayCategorie[$i][$j]){
							$post=$listeArrayCategorie[$i][$j];
							setup_postdata($post);
							$titre2=get_the_title();
							if($titre!=$titre2){
								$titre=get_the_title();
								echo "<br><strong id=".$titre.">".$titre."</strong><br>";
							}
							?>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title" >
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?php the_ID(); ?>"><?php the_field('question');?><span class="glyphicon glyphicon-menu-down pull-right"></span></a>
                                    </h4>
                                </div>
                                <div id="collapse<?php echo the_ID(); ?>" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <p><?php the_field('answer');?></p>
                                    </div>
                                </div>
                            </div>
                            <?php
						}
					}
				}
				?>
                </div>
            </div>
        <div class="col-sm-1"></div>
        </div>
    </div>
</div>

<?php get_footer(); ?>