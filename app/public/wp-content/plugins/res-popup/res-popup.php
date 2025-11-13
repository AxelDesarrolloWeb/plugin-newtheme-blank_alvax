<?php 

/*
* Plugin Name: Res pop-up
* Plugin URI: https://newtheme.eu
* Description: plugin para pop up
* Version: 1.0.0
* Author: Alvax
* Author URI: https: //www.gnu.org/licenses/gpl-2.0.html
* License: GPL2
* License URI: https: //wwww.gnu.org/licenses/gpl-2.0.html
* Text Domain: pop-up
* Domain Path: /languages
*/
 
function res_install() {
    // Accion al activar el plugin
    require_once 'acttivador.php';

};

register_activation_hook(__FILE__ , 'res_install');


function res_desactivador() {
    //Acción al desactivar el plugin
    flush_rewrite_rules();

}

register_deactivation_hook(__FILE__, 'res_desactivador');

// Menú de opciones
require_once 'partials/res-menu.php';


// Encolamiento de archivos
require_once 'partials/res-archivos.php';