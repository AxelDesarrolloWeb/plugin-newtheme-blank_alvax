<?php

class RES_Ejemplos
{
    public function peticiones()
    {

        // $args = [
        //     'arg1' => 150,
        //     'arg2' => 750

        // ];

        // echo __('Mi comunidad es cataluña', 'res-pruebas');

        // echo "<br>";
        // _e ("vivo en españa", "res-pruebas");

        $comunidad = 'Cataluña';
        $ciudad = 'Tarragona';

        // printf(
        //     __('Mi comunidad autonoma es %s y mi ciudad es %s','res-pruebas'),
        //     $comunidad,
        //     $ciudad
        // );

        $contador = 30;

        // printf(
        //     _n('%s mensaje', '%s mensajes', $contador, 'res-pruebas'), $contador
        // );

        // echo date('l js F Y');

        /**translatore: Formato de fecha guardado, ver en https://php.net/date */
        // __('l js F Y', 'res-pruebas');

        // Esto es una petición a un archivo JSON
        // $response = wp_remote_get('https://api.github.com/users/wordpress');

        // var_dump(json_decode($response['body']));

        // Object std class
        // $llave = json_decode($response['body'], true);

        // echo $llave->avatar_url;

        // Array de valores
        // $llave = json_decode($response['body'], true);
        // echo $llave['node_id'];


        // $body = [
        //     'nombre' => 'Jhom Jairo',
        //     'correo' => 'info@newtheme.eu'
        // ];

        // $args = [
        //     'body' => $body,
        //     'timeout' => '3',
        //     'method' => 'DELETE',
        //     // 'method' => 'UPDATE'
        // ];
        // $response = wp_remote_get('https://carolinaspa-alvax.great-site.net/shop/', $args);
        // $response = wp_remote_request('https://carolinaspa-alvax.great-site.net/shop/', $args);
        // var_dump($response);

        $r = 'curso01';

        // set_transient($transiet, $value, $expiration);
        // 60 segundos por 60 minutos
        // set_transient('usuario_01', $r, 60 * 60);

        // $valor = get_transient('usuario_01');

        // var_dump($valor);

        // delete_transient('usuario_01');

        // var_dump($valor);

        // echo "<pre>";
        // var_dump(wp_get_schedules('res_prueba01', $args));
        // echo "</pre>";

        //  echo "<pre>";
        //  echo wp_next_scheduled('res_prueba01', $args);

        // echo "</pre>";

        global $wpdb;
        $tabla = $wpdb->prefix . 'usuarios';
        // $sql = "SELECT * FROM {$wpdb->prefix}usuarios";
        // $sql = "SELECT * FROM $tabla WHERE id = 1 AND nombre = 'Jesus'";
        $sql = "SELECT * FROM $tabla WHERE id = %d AND nombre = %s";
        $args = [
            7,
            'Alvaro'
        ];
        $query = $wpdb->prepare($sql, $args);
        // $resultado = $wpdb->delete($tabla, $datos, $where, $formato, $where_formato);
        // $wpdb->show_errors(true);
        $wpdb->show_errors(false);
        $resultado = $wpdb->query($query);

        // var_dump($wpdb->num_rows );
        // $resultado = $wpdb->delete($sql);

        // var_dump($resultado);
        // if ($resultado !== false) {
        //     if ($resultado != 0) {
        //         var_dump($wpdb->last_result);
        //     } else {
        //         echo "No se encontraron registros en esta consulta";
        //     }
        // } else {
        //     echo "Hubo un error en la consulta";
        // }

        // $resultado = $wpdb->get_var($sql, 2,1);
        // $resultado = $wpdb->get_row($sql, ARRAY_A, 2);
        // $resultado = $wpdb->get_row($sql, OBJECT, 2);
        // $resultado = $wpdb->get_col($sql);
        // $resultado = $wpdb->get_row($sql, ARRAY_N, 2);

        // $resultado = $wpdb->get_results($sql, 'OBJECT_K');
        // $resultado = $wpdb->insert($tabla, $datos, $formato);


        // $datos= [
        //     'id' => null,
        //     'nombre' => 'Alvaro',
        //     'apellido' => 'Fernandez',
        //     'telefono' => 89983898
        // ];

        // $datos= [
        //     'nombre' => 'Jesus',
        //     'apellido' => 'Fernandez',
        //     'telefono' => 89983898
        // ];

        $formato = [
            '%s'
        ];

        $where = [
            'id' => 6,
            'nombre' => 'Alvaro'
        ];

        $where_formato = [
            '$d',
            '$s'
        ];

        $datos = [
            'id' => 2,
            'nombre' => 'Andrea',
            'apellido' => 'Castro',
            'telefono' => 899838982
        ];
        $formato = [
            '%d',
            '$s',
            '%s',
            '%d'
        ];
        // $resultado = $wpdb->insert($tabla, $datos, $formato);
        // $resultado = $wpdb->replace($tabla, $datos, $formato);
        // $resultado = $wpdb->update($tabla, $datos, $where, $formato, $where_formato);
        // var_dump($resultado);


        // var_dump($resultado[1]->nombre);


        // echo "Esto es una prueba para el gestor multimedia";
        $boton = "<button class='button button-primary btnMarcoMedia'>
        Gestor de Medios
        </button>";
        echo $boton;

        $dato = get_option('atr_options_page');
        var_dump($dato);

        // Contenedor vacío correctamente formado (antes había una comilla faltante)
        // $imagen = "<div class='marco' id='imagenesSeleccionadas' style='margin-top:10px;'></div>";
        $imagen = "<div class='marco'></div>";

        echo $imagen;

        // foreach ($dato as $img) {
        //     echo "url: {$img['url']} <br>";
        // }
    }

    public function res_datos()
    {
        $urls = $_POST['urls'];
        add_option('atr_options_page', $urls);
        update_option('atr_options_page', $urls);

        die();
    }

    public function res_transitorios()
    {
        $urlhome = home_url('/', 'relative');

        // CORREGIDO: Pasar la URL actual explícitamente
        $url = add_query_arg(array(), $urlhome);

        if ($urlhome == $url) {
            $mensaje = get_transient('mensaje_intro');

            if ($mensaje === false) {
                $mensaje = 'Celebración Hallowen';
                set_transient('mensaje_intro', $mensaje, 15);
            }
        }
    }
}

// Reemplazar salidas de depuración tipo: var_dump($valor); echo 'Hubo un error...';
if (defined('WP_DEBUG') && WP_DEBUG) {
    // Registrar en el log en lugar de imprimir en pantalla para no romper cabeceras.
    error_log(sprintf('res_pruebas: valor=%s', print_r($valor, true)));
    error_log('res_pruebas: Hubo un error en la consulta');
} else {
    // No mostrar nada en producción.
}

// Si usas add_query_arg, asegúrate de llamarlo con parámetros válidos:
if (function_exists('add_query_arg')) {
    // Ejemplo seguro: construir query a partir de un array y una URL base explícita.
    $query_args = array('consulta' => isset($valor) ? $valor : '');
    $url = add_query_arg($query_args, admin_url('admin.php'));
} else {
    $url = admin_url('admin.php');
}
