<?php
class RES_Widgets extends WP_Widget
{
    public function __construct()
    {
        $widget_options = [
            'classname' => 'res_widget',
            'description' => 'Widget de Pruebas'
        ];

        $control_options = [
            'height' => 200,
            'width' => 250
        ];

        parent::__construct(
            'res_widget',
            'Widget Personalizado',
            $widget_options,
            $control_options
        );
    }

    public function form($instance)
    {
        // Guardamos los valores para el título
        $titulo_id = $this->get_field_id('titulo');
        $titulo_name = $this->get_field_name('titulo');
        $titulo_val = esc_attr($instance['titulo']);

        // Guardamos los valores para el cuerpo
        $cuerpo_id = $this->get_field_id('cuerpo');
        $cuerpo_name = $this->get_field_name('cuerpo');
        $cuerpo_val = esc_attr($instance['cuerpo']);

        $form = "
        <label for='$titulo_id'>$titulo_id</label>
        <label type='text' name='$titulo_name' id='$titulo_id' value='$titulo_val'></label>

        <label for='$cuerpo_id'>$cuerpo_id</label>
        <textarea name='$cuerpo_name' id='$cuerpo_id'>$cuerpo_val</textarea>
        ";

        echo $form;
    }
}
