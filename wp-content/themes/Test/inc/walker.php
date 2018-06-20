<?php
/*
	start_lvl va chercher tous les ul
	start_el va chercher tous les li
*/


class Walker_Nav_Primary extends Walker_Nav_menu{
	function start_lvl(&$output,$depth){
		$indent = str_repeat('\t',$depth);
		//On cherche les sous menu pour pouvoir les créer:
		if($depth>0){
			$submenu='sub-menu';
		}else {
			$submenu='';
		}
		$output.="\n$indent<ul class=\"dropdown-menu$submenu depth_$depth\">\n";
	}
	//function start_el(){

	//}
}