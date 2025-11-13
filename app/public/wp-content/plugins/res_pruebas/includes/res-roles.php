<?php

class RES_Roles
{
    public function manipulacion_roles()
    {
        $wp_roles = new WP_Roles;


        // $wp_roles->remove_role('rolnuevo');

        $usuario = get_userdata(get_current_user_id());

        // var_dump($usuario);

        $maria = new WP_User(12);

        // var_dump($maria->roles);

        // echo "<br>";

        // echo "</br>";

        $maria->add_role('contributor');

        // var_dump($maria->roles);

        // echo "<br>";
        // var_dump($maria->allicaps);
        // echo "</br>";

        $maria->set_role('rolnuevo');

        // var_dump($maria->roles);

        // var_dump();

        $capacidades = [
            'edit_posts' => true,
            'edit_published_posts' => true,
            'publish_posts' => true,
            'read' => true,
            'upload_files' => true,
            'mailing_masivos' => true
        ];

        $wp_roles->add_role(
            'rolnuevo',
            'Rol Nuevo',
            $capacidades
        );

        if (current_user_can('mailing_masivos')) {
            // Mostramos toda la página de administración de emails

        };

        $usuario_id = $usuario->ID;

        $usuario = new WP_Roles($usuario_id);
        
        $rol = $usuario->get_role('rolnuevo');
        if ($rol) {
            if (user_can($usuario_id, 'mailing_masivos')) {
                echo "<h3>Si puede tiene rol nuevo y la cap mailing masiva</h3>";
            } else {
                // echo "No Puede";
            }
        } else {
            // echo "No tienes rol nuevo"; 
        }

        // echo "<br>";

        $nuevousuario = new WP_User(13);
        // var_dump($nuevousuario->exists());
    }
}
