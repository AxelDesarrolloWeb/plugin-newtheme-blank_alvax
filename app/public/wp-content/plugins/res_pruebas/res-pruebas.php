<?php

/**
 * Plugin Name: pruebas
 * Plugin Uri: https://pruebas.com
 * Description: Este es un plugin de pruebas
 * Version: 1.0.0
 * Requires PHP: 8.2.27
 * Author: Alvax
 * Author Uri: https://alvax.eu
 * License: GPL V2
 * License Uri: https://www.gnu.org/licences/gpl-2.0.html
 * Text Domain: res-pruebas
 * Domain Path: /languages
 * */

function res_disable()
{
    //Accion
    flush_rewrite_rules();
};

register_deactivation_hook(__FILE__, 'res_disable');


if (!isset($mivariable)) {
    $mivariable = "Nuevo valor";
};

if (!function_exists('res_install')) {
    function res_install()
    {
        //Accion
        require_once 'activador.php';
    }
    register_activation_hook(__FILE__, 'res_install');
};

if (!class_exists('RES_Mi_Class')) {
    class RES_Mi_Class {};
};

// if (!defined('WP_UNINSTALL_PLUGIN')) {
//     exit();
// };

// if (is_admin()) {
//     require_once 'admin/display-admin.php';
// } else {
//     require_once 'public/display-public.php';
// }


if (!function_exists('res_plugins_cargados')) {
    function res_plugins_cargados()
    {
        if (current_user_can('edit_pages')) {
            if (!function_exists('add_meta_description')) {
                function add_meta_description()
                {
                    echo "<meta name='description' content='Creacion de plugins de Wordpress'>";
                };
                add_action('wp_head', 'add_meta_description');
            };
        };
    };
    add_action('plugins_loaded', 'res_plugins_cargados');
};

// $_POST['email'] = 'pruebas@pruebas.eu';
// $email = $_POST['email'];

// if (is_email($email)) {
//     echo "Este email es correcto";

// } else {
//     echo "Email incorrecto";


// }

// $_POST['frutas'] = array(
//     'Manzana',
//     'Manzana',
//     'Pera',
//     'Piña'
// );

// $frutas = $_POST['frutas'];

// if (in_array('Manzana', $frutas)) {
//     echo "Manzanas disponibles";

// } else {
//     "Manzanas no disponibles";
// }

if (!function_exists('res_pruebas_nonce')) {
    function res_prueba_nonce()
    {
        add_menu_page(
            'RES Prueba Nonce',
            'RES Prueba Nonce',
            'manage_options',
            'res_pruebas_nonce',
            'res_pruebas_page_display',
            'dashicons-welcome-learn-more',
            '15'
        );

        // remove_menu_page('res_pruebas_nonce');

    };
    add_action('admin_menu', 'res_prueba_nonce');
};

if (!function_exists('res_pruebas_page_display')) {

    function res_pruebas_page_display()
    {

        if (current_user_can('edit_others_posts')) {

            $nonce = wp_create_nonce('mi_nonce_de_seguridad');
            echo "<br> $nonce <br>";


            if (isset($_POST['nonce']) && !empty($_POST['nonce'])) {
                if (wp_verify_nonce($_POST['nonce'], 'mi_nonce_de_seguridad')) {
                    echo "Hemos verificado correctamente el nonce recibido <br> Nonce : {$_POST['nonce']} <br>";
                } else {
                    echo "El nonce no fue recibido o no es correcto";
                }
            }

?>
            <br>
            <form action="" method="post">
                <input type="hidden" name="nonce" value="<?php echo $nonce; ?>">

                <input type="hidden" name="eliminar" value="eliminar">

                <button type="submit">Eliminar</button>

            </form>
        <?php

        }
    }
}








// Funcion eliminar widget
function miprimerafunction()
{
    unregister_widget('WP_Widget_Calendar');
}
add_action('widgets_init', 'miprimerafunction');

// Funcion para enviar email al crear un post
function function_callback_save_post($post_id, $post)
{
    if (wp_is_post_revision($post_id)) {
        return;
    }

    $autor_id = $post->post_author;
    $name_autor = get_the_author_meta('display_name', $autor_id);
    $email_autor = get_the_author_meta('user_email', $autor_id);
    $title = $post->post_title;
    $permalink = get_permalink($post_id);

    // Datos para el email
    $para = sprintf('%s', $email_autor);
    $asunto = sprintf('Publicación guardada: %s', $title);
    $mensaje = sprintf('Felicitaciones, %s ! su publicación "%s" ha sido guardada, puede verlo en el siguiente enlace: %s', $name_autor, $title, $permalink);
    $headers[] = 'From "' . $name_autor . '" < ' . get_option('admin_email') . '> ';

    // wp_mail( $para, $asunto, $mensaje, $headers );
    wp_mail(
        $para,
        $asunto,
        $mensaje,
        $headers,
        $attachments = array()
    );
}
add_action('save_post', 'function_callback_save_post', 10, 2);

function atr_modificar_texto($texto)
{
    $texto = "...";
    return $texto;
};

add_filter('excerpt_more', 'atr_modificar_texto');


// Función shortcode
function res_primer_shortcode($atts, $content = null)
{
    return '<h3 class="title">' . $content . '</h3>';
}

add_shortcode('res_texto', 'res_primer_shortcode');

// Shortcode complejo
function res_shortcode_link_personalizado($atts, $contenido = null)
{
    $attr_default = array(
        'texto' => 'ver información',
        'class' => 'btn btn-primary',
        'url' => '#',
        'target' => '_blank'
    );

    $atts = array_change_key_case((array)$atts, CASE_LOWER);

    // CONVERTIMOS LOS OBJETOS EN VARIABLES
    extract(shortcode_atts($attr_default, $atts, 'reslink'), EXTR_OVERWRITE);

    return "
    <a href='$url' class='$class' target='$target'>
    $contenido
    </a>
    ";
}

add_shortcode('reslink', 'res_shortcode_link_personalizado');


// remove_shortcode( 'reslink');

// if (shortcode_exists('reslink')) {
//     echo "si existe";
// } else {
//     echo "no existe";
// }

function filter_the_content_in_the_main_loop($content)
{
    if ((is_singular('post')) && in_the_loop() && is_main_query()) {
        if (is_single('prueba-shortcode') && ! shortcode_exists('reslink')) {
            return $content . "
            <div class='alert alert-danger' role='alert'>" .
                esc_html__("shortcode no existe", "res_pruebas") .
                "</div>";
        }
    }
    return $content;
}

add_filter('the_content', 'filter_the_content_in_the_main_loop');

function res_function_setting()
{
    // Registrando una nueva función en la página general
    register_setting('general', 'res_primera_configuracion');


    // add_settings_field(
    //     $id,
    //     $title,
    //     $callback,
    //     $page,
    //     $section = 'default',
    //     $args = array()
    // );

    add_settings_section(
        'res_config_seccion',
        'Mi primera configuracion',
        'res_config_seccion_cb',
        'general'
    );

    add_settings_field(
        'res_config_campo1',
        'Configuración Campo 1',
        'res_config_campo1_cb', // <-- corregido: nombre de función existente
        'general',
        // String id del settings_section
        'res_config_seccion'
    );
}

add_action('admin_init', 'res_function_setting');

//Funcci n callback secci n
function res_config_seccion_cb()
{
    echo "<p>Mi primer ajuste de configuración</p>";
}

//Funcci n callback campo
function res_config_campo1_cb()
{
    $resconfig = get_option('res_primera_configuracion');
    $resconfig = isset($resconfig) ? esc_attr($resconfig) : '';

    $html = "<input type='text' name='res_primera_configuracion' value='$resconfig'>";
    echo $html;
}

// add_post_meta(101, 'mimetadato', 'un valor cualquiera');

// add_post_meta(101, 'colores', 'Azul', true);
// add_post_meta(101, 'colores', 'Verde');
// add_post_meta(101, 'colores', 'Rojo');



// delete_post_meta(101, 'colores', 'Rojo');

// update_post_meta(101, 'colores', 'Marron', 'Azul');

if (!function_exists('atr_add_caja_personalizada')) {
    function atr_add_caja_personalizada()
    {
        $post_types = ['post', 'eventos'];

        // Creando Metaboxes
        add_meta_box(
            'atr_mi_metabox',
            'Datos Extra',
            'atr_metacaja_html',
            $post_types,
            'normal',
            'high',
            null
        );
    };

    add_action('add_meta_boxes', 'atr_add_caja_personalizada');
}

function atr_metacaja_html($post)
{
    $atr_dato = get_post_meta($post->ID, 'atr_datos', true);

    $tiempo = isset($atr_dato['tiempo']) ? $atr_dato['tiempo'] : '';
    $precio = isset($atr_dato['precio']) ? $atr_dato['precio'] : '';
    $valoracion = isset($atr_dato['valoracion']) ? $atr_dato['valoracion'] : '';

    $editor = isset($atr_dato['editor']) ? $atr_dato['editor'] : '';

    $html = "
    <div>
    <label for='atr_tiempo'>Tiempo</label>
    <input type='text' name='atr_dato[tiempo]' id='atr_tiempo' value='$tiempo'>

    <label for='atr_precio'>Precio</label>
    <input type='text' name='atr_dato[precio]' id='atr_precio' value='$precio'>
    </div>

    <div>
    <label for='atr_valoracion'>Valoración</label>
    <select name='atr_dato['valoracion']' id='atr_valoracion'>
        <option value=''></option>
        <option value='1' " . selected($valoracion, 1,false) ."'>1</option>
        <option value='2'" . selected($valoracion, 2,false) ."'>2</option>
        <option value='3' " . selected($valoracion, 3,false) ."'>3</option>
        <option value='4' " . selected($valoracion, 4,false) ."'>4</option>
        <option value='5' " . selected($valoracion, 5,false) ."'>5</option>
    </select>
    </div>
    ";

    echo $html;

    wp_editor(
        $editor,
        'atr_dato[editor]',
        [
            'media_buttons',
            
        ]
    );
}

function atr_save_metacaja_datos($post_id) {
    if (array_key_exists('atr_dato', $_POST)) {
        update_post_meta(
            $post_id,
            'atr_datos',
            $_POST['atr_datos']
        );
    };
};

add_action('save_post', 'atr_save_metacaja_datos');

if( !defined('PLUGIN_DIR_PATH') ) {
        define('PLUGIN_DIR_PATH', plugin_dir_path(__FILE__ ));
}

require_once PLUGIN_DIR_PATH . 'includes/res-master.php';

function res_run_res_master(){
    $atr_master = new RES_Master;
    $atr_master->res_run();
}

res_run_res_master();

function res_pruebas_admin_scripts($hook) {
    // Cargar solo en la página de opciones del plugin para evitar 404 y sobrecarga
    if ( false === strpos( $hook, 'res_options_page' ) && false === strpos( $hook, 'res' ) ) {
        return;
    }

    // Cargar la librería de medios de WP (wp.media)
    wp_enqueue_media();

    // Registrar y encolar script con ruta absoluta desde este plugin
    wp_enqueue_script(
        'res-pruebas-admin',
        plugin_dir_url(__FILE__) . 'admin/js/admin-app.js',
        array('jquery', 'media-views', 'media-editor'),
        filemtime( plugin_dir_path(__FILE__) . 'admin/js/admin-app.js' ),
        true
    );

    // Datos para JS
    wp_localize_script('res-pruebas-admin', 'userinfo', array(
        'ajaxurl' => admin_url('admin-ajax.php')
    ));
}
add_action('admin_enqueue_scripts', 'res_pruebas_admin_scripts');