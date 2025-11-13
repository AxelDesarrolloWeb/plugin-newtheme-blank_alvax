<?php

/**
 * Creando el menú pop-up
 * **/

if (!function_exists('res_menu_popup')) {
    function res_menu_popup()
    {
        add_menu_page(
            'Menú Pop-Up',
            'Menú Pop-Up',
            'manage_options',
            'res_popup',
            'res_options_menu_popup',
            'dashicons-megaphone',
            '12'
        );
    }

    add_action('admin_menu', 'res_menu_popup');
}

// Función callback
if (!function_exists('res_options_menu_popup')) {
    function res_options_menu_popup()
    {
        $edit = isset($_GET['edit']) ? sanitize_text_field( wp_unslash( $_GET['edit'] ) ) : '';
        $id   = isset($_GET['id']) ? absint( $_GET['id'] ) : 0;

        if (!empty($edit) && $id > 0) {
            require_once plugin_dir_path(__FILE__) . '../admin/res-display-menu-edit.php';
        } else {
            require_once plugin_dir_path(__FILE__) . '../admin/res-display-menu.php';
        }
    }
}
