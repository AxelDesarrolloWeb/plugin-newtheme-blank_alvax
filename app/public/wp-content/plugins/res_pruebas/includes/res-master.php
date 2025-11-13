<?php

class RES_Master
{

    // Propiedades
    protected $plugin_dir_path;
    protected $cargador;
    protected $taxonomias;
    protected $usuarios;
    protected $meta_social_user;

    protected $build_menupage;
    protected $menu_pruebas;
    protected $roles;

    protected $ejemplos;
    protected $version;
    protected $plugin_dir_path_dir;
    protected $admin;
    protected $ajax;
    protected $cron;
    protected $res;

    public function __construct()
    {
        $this->version = '1.0.0';

        $this->plugin_dir_path = plugin_dir_path(__FILE__);
        $this->plugin_dir_path_dir = plugin_dir_path(__DIR__);

        $this->cargar_dependencias();
        // Primero creamos las instancias que usan los ganchos
        $this->cargar_instancias();
        // Luego definimos los hooks que usan esas instancias
        $this->definir_admin_hooks();
    }
    public function cargar_dependencias()
    {
        require_once $this->plugin_dir_path . 'res-cargador.php';
        require_once $this->plugin_dir_path . 'res-taxonomias.php';
        require_once $this->plugin_dir_path . 'res-usuarios.php';
        require_once $this->plugin_dir_path . 'res-meta-social-user.php';

        require_once $this->plugin_dir_path . 'res-build-menupage.php';
        require_once $this->plugin_dir_path . 'res-menu-pruebas.php';
        require_once $this->plugin_dir_path . 'res-roles.php';

        require_once $this->plugin_dir_path . 'res-ejemplos.php';
        require_once $this->plugin_dir_path_dir . 'admin/res-admin.php';
        require_once $this->plugin_dir_path . 'res-ajax.php';

        require_once $this->plugin_dir_path . 'res-widgets.php';
        require_once $this->plugin_dir_path . 'res-cron.php';
    }

    // Metodo para cargar los widgets
    public function registro_widgets( ) {
        register_widget('RES_Widgets');
    }

    public function cargar_instancias()
    {
        $this->cargador = new RES_Cargador;
        $this->taxonomias = new RES_Taxonomias;
        $this->usuarios = new RES_Usuarios;
        $this->meta_social_user = new RES_Meta_Social_User;

        $this->build_menupage = new RES_Build_Menupage;

        $this->menu_pruebas = new RES_Menu_Pruebas($this->build_menupage);

        $this->roles = new RES_Roles;

        $this->ejemplos = new RES_Ejemplos;
        $this->admin = new RES_Admin($this->version);

        $this->ajax = new RES_Ajax;
        $this->cron = new RES_Cron;
    }

    public function definir_admin_hooks()
    {
        // Cambiar 'tipo-comida' por el nombre de método válido en RES_Taxonomias (ej. 'tipo_comida')
        $this->cargador->add_action('init', $this->taxonomias, 'tipo_comida');
        $this->cargador->add_action('init', $this->usuarios, 'usuario_prueba');
        $this->cargador->add_action('init', $this->usuarios, 'usuario_maria_array');
        $this->cargador->add_action('init', $this->usuarios, 'usuario_jorge_stdclass');
        $this->cargador->add_action('init', $this->usuarios, 'usuario_carlos_wpuser');

        // Datos de usuarios
        $this->cargador->add_action('plugins_loaded', $this->usuarios, 'obtener_datos');
        $this->cargador->add_action('plugins_loaded', $this->usuarios, 'actualizar_usuario');
        $this->cargador->add_action('plugins_loaded', $this->usuarios, 'eliminar_usuario');

        $this->cargador->add_action('user_new_form', $this->meta_social_user, 'add_meta_fields');
        $this->cargador->add_action('show_user_profile', $this->meta_social_user, 'add_meta_fields');
        $this->cargador->add_action('edit_user_profile', $this->meta_social_user, 'add_meta_fields');

        $this->cargador->add_action('user_register', $this->meta_social_user, 'save_meta_fields');
        $this->cargador->add_action('personal_options_update', $this->meta_social_user, 'save_meta_fields');
        $this->cargador->add_action('edit_user_profile_update', $this->meta_social_user, 'save_meta_fields');

        // Ganchos menus
        $this->cargador->add_action('admin_menu', $this->menu_pruebas, 'res_options_page');
        $this->cargador->add_action('res_extend_form', $this->menu_pruebas, 'res_anadir_campos_nuevos');

        // Manipulación de roles
        $this->cargador->add_action('init', $this->roles, 'manipulacion_roles');

        // Peticiones HTTP
        $this->cargador->add_action('ejemplos', $this->ejemplos, 'peticiones');

        // Transitorios
        $this->cargador->add_action('init', $this->ejemplos, 'res_transitorios');

        // Encolamientos css y js
        $this->cargador->add_action('admin_enqueue_scripts', $this->admin, 'enqueue_styles');
        $this->cargador->add_action('admin_enqueue_scripts', $this->admin, 'enqueue_scripts');

        // Método Ajax
        $this->cargador->add_action('wp_ajax_ajax_menu_opciones', $this->ajax, 'ajax_menu_opciones');
        
        // Gancho para widgets
        $this->cargador->add_action('widgets_init', $this, 'registro_widgets');

        // Gangho de filtro para cron
        $this->cargador->add_filter('cron-schedules', $this->cron, 'intervalos');
        
        // Eventos cron
        $this->cargador->add_action('init', $this->cron, 'inicializador');

        // 
        $this->cargador->add_action('res_prueba01', $this->cron, 'evento01',10,2);
        
        // Guardar imágenes ajax
        $this->cargador->add_action('wp_ajax_res_ajax_ruta', $this->ejemplos, 'res_datos');
        $this->cargador->add_action('wp_ajax_nopriv_res_ajax_ruta', $this->ejemplos, 'res_datos');

    }

    public function res_run()
    {
        $this->cargador->res_run();
    }
}
