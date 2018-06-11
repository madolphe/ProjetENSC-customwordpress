<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'wordpress');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'wpuser');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'mdp');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '5}La0 xM-]LXOg,U06pCW@RNF_Ei8%gr,K[S_AfnPqT$LnaJ@2*Bue<|)Gn4*O2{');
define('SECURE_AUTH_KEY',  'qhUq&fc~<mfexc>ji52<,H4T/8$W[/ciy&PI)OK)8y;65E]t8?#WA!Vuz?&W ~LS');
define('LOGGED_IN_KEY',    '$6OW!D]D3YLLb=;g?w>a+aMx_xpW|}G;<pe,n2(]N]CU5Jk5 aXJ~MXLMKc%?%yn');
define('NONCE_KEY',        'Evlv8iT&JF7Q1WK3Bz_{$o`Iftf?xCF3$NF=Bs$ieE`EmUfi($;z[wOf-Ko]|Q_y');
define('AUTH_SALT',        ':j jb?qA.=Ia8[tUs}ZtUFxeX?EiFbH64;ibtvipz=4~O5p5psQd_mD,Qz.9hjju');
define('SECURE_AUTH_SALT', '_}j P~u!xPP%T9qdQggW:M)y%VOWwPP1 irr[E>sywX?J5N7nq70Mvgg|MVpf#d>');
define('LOGGED_IN_SALT',   '5Cq;iZ62aSO.BZV^A.|:w3Aj.~8N(UwH(,V=BH&zt2Z`{$tH{)V:uI2/H8qf^Eb0');
define('NONCE_SALT',       'KdlNcD+T;kSWqHw>o0;3adfi41LO.d1d.?e,!M}fMl;w>XAxB<Y2mHbbxZ=;p.E0');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');