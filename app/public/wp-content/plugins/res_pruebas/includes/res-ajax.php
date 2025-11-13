<?php

class RES_Ajax {
    public function ajax_menu_opciones() {
        $valor = $_POST['consulta'];

        global $wpdb;

        $resultado = $wpdb->get_results(
            "SELECT * FROM {$wpdb->prefix}users WHERE display_name LIKE '%$valor'", OBJECT
        );

        $respuesta = json_encode($resultado);

        echo $respuesta;

        die();
    }
}