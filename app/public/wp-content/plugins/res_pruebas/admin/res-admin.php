<?php

class RES_Admin
{
    private $version;
    private $plugin_dir_path;
    private $plugin_dir_url;
    private $plugin_dir_url_dir;
    public function __construct($version)
    {
        $this->version = $version;
        $this->plugin_dir_path = plugin_dir_path(__FILE__);
        $this->plugin_dir_url = plugin_dir_url(__FILE__);
        $this->plugin_dir_url_dir = plugin_dir_url(__DIR__);
    }

    public function enqueue_styles($hook)
    {
        if ($hook != 'toplevel_page_res_options_page') {
            return;
        }

        // plugin_dir_url(__FILE__) ya apunta a .../wp-content/plugins/res_pruebas/admin/
        wp_enqueue_style(
            'admin_estilos',
            $this->plugin_dir_url . 'css/admin-estilos.css',
            array(),
            $this->version,
            'all'
        );
    }

    public function enqueue_scripts($hook)
    {
        if ($hook != 'toplevel_page_res_options_page') {
            return;
        }

        // Cargar librería de Media
        wp_enqueue_media();

        // Encolar script usando URL (no rutas de sistema)
        wp_enqueue_script(
            'admin_app',
            $this->plugin_dir_url . 'js/admin-app.js',
            array('jquery', 'media-views'),
            $this->version,
            true
        );

        // Localizaciones para el script
        wp_localize_script(
            'admin_app',
            'traduccion',
            array('mensajes_users' => array(
                'mensaje1' => __('No hemos encontrado usuarios', 'res-pruebas')
            ))
        );

        wp_localize_script(
            'admin_app',
            'userinfo',
            array('ajaxurl' => admin_url('admin-ajax.php'))
        );
    }
};
