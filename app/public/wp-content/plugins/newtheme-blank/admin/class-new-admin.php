<?php
/**
 * La funcionalidad especifica de administración del plugin.
 *
 * @link       http://misitioweb.com
 * @since      1.0.0
 *
 * @package    newtheme-blank
 * @subpackage newtheme-blank/admin
 */

/**
 * Define el nombre del plugin, la versión y dos métodos para
 * Encolar la hoja de estilos especifica de administración y JavaScript.
 *
 * @since      1.0.0
 * @package    newtheme-blank
 * @subpackage newtheme-blank/admin
 * @author     Jhon J.R <email@example.com>
 *
 * @property string $plugin_name
 * @property string $version
 */
class NEW_Admin {

    /**
	 * El identificador único de este plugin
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string    $plugin_name  El nombre o identificador único de este plugin
	 */
    private $plugin_name;

    /**
	 * Version actual del plugin
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string    $version  La versión actual del plugin
	 */
    private $version;

    /**
	 * Para crear un nuevo menu en la administración
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string    $build_menupage  crea un nuevo menú
	 */
     private $build_menupage;

    /**
	 * Para insertar datos
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string   $db accede a los metodos de bases de datos
	 */
     private $db;

    /**
     * Objeto NEW_CRUD_JSON
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string    $crud_json instancia del objeto NEW_CRUD_JSON
	 */
	 private $crud_json;

    /**
     * @param string $plugin_name nombre o identificador único de este plugin.
     * @param string $version La versión actual del plugin.
     * @param string $build_menupage Crea un nuevo menú.
     */
    public function __construct( $plugin_name, $version ) {

        $this->plugin_name = $plugin_name;
        $this->version = $version;
        $this->build_menupage = new NEW_Build_Menupage;

        global $wpdb;
        $this->db = $wpdb;
        $this->crud_json = new NEW_CRUD_JSON;

    }

    /**
	 * Registra los archivos de hojas de estilos del área de administración
	 *
	 * @since    1.0.0
     * @access   public
	 */
    public function enqueue_styles( $hook ) {

        /**
         * Condicional para controlar la carga de archivos
         * Solo se mostrara en nuestro menu Newtheme Datos
         */
        if ( $hook != 'toplevel_page_new_data' ){
            return;
        }

        /**
         * Una instancia de esta clase debe pasar a la función run()
         * definido en NEW_Cargador como todos los ganchos se definen
         * en esa clase particular.
         *
         * El NEW_Cargador creará la relación
         * entre los ganchos definidos y las funciones definidas en esta
         * clase.
		 */
        wp_enqueue_style( $this->plugin_name, NEW_PLUGIN_DIR_URL . 'admin/css/new-admin.css', array(), $this->version, 'all' );

        /**
         * Framework materialize
         * https://materializecss.com/
         */
        wp_enqueue_style( 'new_materialize_css', NEW_PLUGIN_DIR_URL . 'helpers/materialize/css/materialize.min.css', array(), '1.0.0', 'all' );

        /**
         * Framework materialize icons
         * https://materializecss.com/icons.html
         */
        wp_enqueue_style( 'new_materialize_icons', 'https://fonts.googleapis.com/icon?family=Material+Icons', array(), '1.0.0', 'all' );

    }

    /**
	 * Registra los archivos Javascript del área de administración
	 *
	 * @since    1.0.0
     * @access   public
	 */
    public function enqueue_scripts( $hook ) {

        /**
         * Condicional para controlar la carga de archivos
         * Solo se mostrara en nuestro menu Newtheme Datos
         */
        if ( $hook != 'toplevel_page_new_data' ){
            return;
        }

        /**
         * Función para utilizar el marco multimedia de wordpress
         */
        wp_enqueue_media( );

        /**
         * Una instancia de esta clase debe pasar a la función run()
         * definido en NEW_Cargador como todos los ganchos se definen
         * en esa clase particular.
         *
         * El NEW_Cargador creara la relación
         * entre los ganchos definidos y las funciones definidas en este
         * clase.
		 */
        wp_enqueue_script( $this->plugin_name, NEW_PLUGIN_DIR_URL . 'admin/js/new-admin.js', ['jquery'], $this->version, true );

        /**
         * Libreria sweetalert2
         * https://sweetalert.js.org/guides/
         */
        wp_enqueue_script( 'new_sweetalert', NEW_PLUGIN_DIR_URL . 'helpers/sweetalert2/sweetalert.min.js', ['jquery'], $this->version, true );

        /**
         * Framework materialize
         * https://materializecss.com/
         */
        wp_enqueue_script( 'new_materialize_js', NEW_PLUGIN_DIR_URL . 'helpers/materialize/js/materialize.min.js', ['jquery'], '1.0.0', true );

        /**
         * Función para el ajax de datos
         * Parámetros:
         * 1. Nombre del archivo = $this->plugin_name
         * 2. Nombre del objeto = newdata
         * 3. array de datos:
         * -url: la url del archivo la creara wordpress internamente en el archivo admin_ajax.php
         * -nombre del nonce de seguridad = seguridad
         *
         */
        wp_localize_script(
            $this->plugin_name,
            'newdata',
            [
                'url'           => admin_url( 'admin-ajax.php' ),
                'seguridad'     => wp_create_nonce( 'newdata_seg' )
            ]
        );

        /**
         * Función para el ajax de datos eliminar tabla
         * Parámetros:
         * 1. Nombre del archivo = $this->plugin_name
         * 2. Nombre del objeto = newdata
         * 3. array de datos:
         * -url: la url del archivo la creara wordpress internamente en el archivo admin_ajax.php
         * -nombre del nonce de seguridad = seguridad
         *
         */
         wp_localize_script(
            $this->plugin_name,
            'newtabdelete',
            [
                'url'           => admin_url( 'admin-ajax.php' ),
                'seguridad'     => wp_create_nonce( 'newtabdelete_seg' )
            ]
        );

    }

    /**
     * Método para añadir los menus
     * Utilizamos el metodo run() para crear el menú
     */
    public function add_menu(){

        $this->build_menupage->add_menu_page(
            __( 'Newtheme Datos', 'newtheme-textdomain' ),
            __( 'Newtheme Datos', 'newtheme-textdomain' ),
            'manage_options',
            'new_data',
            [ $this, 'controlador_display_menu' ],
            'dashicons-id-alt',
            22
        );

        $this->build_menupage->run();

    }

    /**
     * Aqui crearemos rutas hacia otros archivos
     * Crearemos los archivos en la carpeta partials
     */
    public function controlador_display_menu(){

        if (
            $_GET['page'] == 'new_data' &&
            $_GET['accion'] == 'edit' &&
            isset( $_GET['id'] )
        ){
            require_once NEW_PLUGIN_DIR_PATH . 'admin/partials/new-admin-display-edit.php';

        }else{

            require_once NEW_PLUGIN_DIR_PATH . 'admin/partials/new-admin-display.php';
        }

    }

    /**
     * Método para pasar datos por ajax
     * Este metodo esta definido en el ajax de nuestro archivo .js
     */
    public function ajax_crud_table(){

        check_ajax_referer('newdata_seg', 'nonce');

        if( current_user_can('manage_options') ){

            extract( $_POST, EXTR_OVERWRITE );

            if( $tipo == 'add' ){

                $columns = [
                    'nombre' => $nombre,
                    'data' => ''
                ];

                $result = $this->db->insert( NEW_TABLE, $columns );

                $json = json_encode( [
                    'result'    => $result,
                    'nombre'    => $nombre,
                    'insert_id' => $this->db->insert_id
                ] );
            }

            echo $json;
            wp_die();

        }

    }

    /**
     * Función para eliminar una tabla
     *
     */
    public function ajax_delete_table(){

        check_ajax_referer('newtabdelete_seg', 'nonce');
        if( current_user_can( 'manage_options' ) ){

            extract( $_POST, EXTR_OVERWRITE );

            if( $tipo == 'delete' ){
                $result = $this->db->delete( NEW_TABLE, [ 'id' => $id ], '%d' );
                $json = json_encode([
                    'result' => $result,
                    'id' => $id,
                    'nombre' => $nombre
                ]);
            }
            echo $json;
            wp_die();
        }
    }

     /**
     * Función para Añadir usuarios
     */
     public function ajax_add_users(){

        check_ajax_referer('newdata_seg', 'nonce');
        if( current_user_can( 'manage_options' ) ){

            extract( $_POST, EXTR_OVERWRITE );
            $sql = $this->db->prepare( "SELECT data FROM " . NEW_TABLE . " WHERE id=%d", $idTable );
            $resultado = $this->db->get_var( $sql );

            if( $tipo == 'add' ){

                $data = $this->crud_json->add_user( $resultado, $nombres, $apellidos, $email, $imgVal );
                $columns        = ['data' => json_encode( $data )];
                $where          = ['id' => $idTable];
                $format         = ['%s'];
                $where_format   = ['%d'];

                $result_update = $this->db->update( NEW_TABLE, $columns, $where, $format, $where_format );
                $last_user = end( $data['users'] );
                $insert_id = $last_user['id'];

                $json = json_encode([
                    'result'    => $result_update,
                    'json'      => $data,
                    'insert_id' => $insert_id
                ]);

            }else if( $tipo == 'update' ){

                $data = $this->crud_json->update_user( $resultado, $idUser, $nombres, $apellidos, $email, $imgVal );
                $columns        = ['data' => json_encode( $data )];
                $where          = ['id' => $idTable];
                $format         = ['%s'];
                $where_format   = ['%d'];

                $result_update = $this->db->update( NEW_TABLE, $columns, $where, $format, $where_format );

                $json = json_encode([
                    'result'    => $result_update,
                    'json'      => $data
                ]);

            }else if( $tipo == 'delete' ){

                $data = $this->crud_json->delete_user( $resultado, $idUser );
                $columns        = ['data' => json_encode( $data )];
                $where          = ['id' => $idTable];
                $format         = ['%s'];
                $where_format   = ['%d'];

                $result_delete = $this->db->update( NEW_TABLE, $columns, $where, $format, $where_format );

                $json = json_encode([
                    'result'    => $result_delete,
                    'json'      => $data
                ]);

            }

            echo $json;
            wp_die();

        }

    }

}