<?php

class RES_Menu_Pruebas
{
    protected $build_menupage;

    public function __construct($build)
    {
        $this->build_menupage = $build;

        // Register instance methods as callbacks so $this is valid
        add_action('res_extend_form', [$this, 'res_anadir_campos_nuevos']);
        add_action('admin_menu', [$this, 'res_options_page']);
    }

    public function res_submenu1_pruebas_display()
    {
?>

            <!--html-->
            <div class="wrap">
                <h3>Bienvenido a la página submenú</h3>
            </div>

        <?php
    }

    public function res_options_page_display()
    {
        ?>

            <!--html-->
            <div class="wrap">
                <form action="" method="post">
                    <input type="text" name="nombre" id="nombre" placeholder="Nombre">

                    <?php do_action('res_extend_form'); ?>

                    <?php submit_button('Enviar'); ?>
                </form>

                <!-- Contenedor Ajax -->
                <div class="contenidoAjax"></div>

                <!-- Prueba Traducción -->
                <h3><?php _e('Texto de prueba', 'res-pruebas'); ?></h3>
                <p><?php _e('Este es un texto de prueba para las traducciones', 'res-pruebas')?></p>
            </div>

            <!-- RES_Ejemplos -->
            <div class="wrap">
                <?php  do_action('ejemplos');?>
            </div>

        <?php
    }

    public function res_options_page()
    {
        add_menu_page(
            'RES opciones de Página',
            'RES opciones de Página',
            'manage_options',
            'res_options_page',
            [$this, 'res_options_page_display'],
            plugin_dir_url(__DIR__) . 'img/icono_personalizado.png',
            '15'
        );

        $parent_slug = 'res_options_page';
        $page_title = 'Submenu 1';
        $menu_title = 'Submenu 1';
        $capability = 'manage_options';
        $menu_slug = 'res_submenu1_pruebas';
        $position = '15';

        // Run builder before adding submenu if needed
        $this->build_menupage->run();

        add_submenu_page(
            $parent_slug,
            $page_title,
            $menu_title,
            $capability,
            $menu_slug,
            [$this, 'res_submenu1_pruebas_display'],
            $position
        );
    }

    public function res_anadir_campos_nuevos()
    {
        ?>

            <input type="text" name="" id="" placeholder="Apellidos">

<?php
    }
}
