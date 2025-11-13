<?php

class RES_Taxonomias
{
    public function tipo_comida()
    {
        // function atr_taxonomias()
        // {
        $post_types = ['post'];

        $labels = array(
            'name' => __('Tipo de comida'),
            'singular_name' => __('Buscar tipo de comida', 'taxonomy singular name'),
            'search_items' => __('Buscar tipo de comida'),
            'all_items' => __('Todos los tipos de comidas'),
            'parent_item' => __('Tipo de comida padre: '),
            'parent_item_colon' => __('Tipo de comida padre: '),
            'edit_item' => __('Editar tipo de comida'),
            'update_item' => __('Actualizar tipo de comida'),
            'add_new_item' => __('Agregar nuevo tipo de comida'),
            'new_item_name' => __('Nuevo tipo de comida'),
            'menu_name' => __('Tipo de comida')
        );

        $args = array(
            'hierarchical' => true,
            'labels' => $labels,
            'show_ui' => true,
            'show_admin_column' => true,
            'query_var' => true,
            'rewrite' => array('slug' => 'tipo-comida'),
            // Campos API REST
            'show_in_rest' => true,
            'rest_base' => 'tipo-comida',
            'rest_controller_class' => 'WP_REST_Terms_Controller'
        );

        // Recibe tres tipos de parámetros
        register_taxonomy('tipo-comida', $post_types, $args);
        // }
    }
}



// add_action('init', 'atr_taxonomias');