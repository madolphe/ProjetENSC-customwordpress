<?php get_header(); ?>

<?php //Création de la loop d'articles:
//Verification de la presence de contenu:
//on utilise le format if/endif pour rester cohérent avec le reste du code wordpress:
if(have_posts()):
while(have_posts()):
		the_post();
		the_post_thumbnail();
	    the_title('<h2>','</h2>');
	    the_content(); ?>
	<hr>
<?php endwhile;
endif;
?>

<div class="container text-center">
    <br><br><br><br>

    JACQUES.—Le monde entier est un théâtre, et
    les hommes et les femmes ne sont que des
    acteurs ; ils ont leurs entrées et leurs sorties. Un
    homme, dans le cours de sa vie, joue différents
    rôles ; et les actes de la pièce sont les sept
    âges[13]. Dans le premier, c’est l’enfant,
    vagissant et régurgitant dans les bras de sa
    nourrice. Ensuite l’écolier, toujours en pleurs,
    avec son frais visage du matin et son cartable, se
    traînant, comme le limaçon, à contre-cœur
    jusqu’à l’école. Puis vient l’amoureux, qui
    soupire comme une fournaise et chante une
    ballade plaintive qu’il a adressée au sourcil de
    sa maîtresse. Puis le soldat, prodigue de
    jurements étranges et barbu comme le
    léopard[14], jaloux sur le point d’honneur,
    emporté, toujours prêt à se quereller, cherchant
    la renommée, cette bulle de savon, jusque dans
    la bouche du canon. Après lui, vient le juge au
    ventre arrondi, garni d’un bon chapon, l’œil
    sévère, la barbe taillée d’une forme grave ; il
    abonde en vieilles sentences, en maximes
    triviales ; et c’est ainsi qu’il joue son rôle. Le
    sixième âge offre un maigre Pantalon[15] en
    pantoufles, avec des lunettes sur le nez et une
    poche de côté : les chausses bien conservées de
    sa jeunesse se trouvent maintenant beaucoup
    trop larges pour son mollet ratatiné ; sa voix,
    jadis forte et mâle, revient au fausset de
    l’enfance, et ne fait plus que siffler d’un ton
    aigre et grêle. Enfin le septième et dernier âge
    vient clore cette histoire pleine d’étranges
    événements ; c’est la seconde enfance, état
    d’oubli profond où l’homme se retrouve sans
    dents, sans yeux, sans goût, sans rien.
    <br><br><br><br>
</div>


<?php get_footer(); ?>
