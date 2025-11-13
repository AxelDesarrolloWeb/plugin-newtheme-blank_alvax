<?php

class RES_Usuarios
{
    public function usuario_prueba()
    {
        $user_login = "Pruebas";
        $user_pass = wp_generate_password(18, false);
        $user_email = 'pruebas@pruebas.com';

        $user_id = username_exists($user_login);

        if (!$user_id && email_exists($user_email) == false) {
            $user_id = wp_create_user(
                $user_login,
                $user_pass,
                $user_email

            );

            if (! is_wp_error($user_id)) {
                wp_mail($user_email, '!Bienvenidx', 'Su contraseña es: ' . $user_pass);
            }
        }
    }

    public function usuario_maria_array()
    {
        $userdata = [
            'user_login'    => 'maria',
            'user_pass'     => wp_generate_password(18, false),
            'user_email'    => 'maria@maria.com',
            'first_name'    => 'Maria',
            'last_name'     => 'Rodriguez',
            'user_url'      => 'maria.com',
            'description'   => 'Tengo mucha experiencia con mi trabajo',
            'role'          => 'editor'
        ];

        $user_id = username_exists($userdata['user_login']);
        if (!$user_id && email_exists($userdata['user_email']) == false) {
            $user_id = wp_insert_user($userdata);

            if (! is_wp_error($user_id)) {
                wp_mail($userdata['user_email'], '!Bienvenidx', 'Su contraseña es: ' . $userdata['user_pass']);
            }
        }
    }


    public function usuario_jorge_stdclass()
    {
        $userdata = new stdClass();

        $userdata->user_login   = "Jorge";
        $userdata->user_pass    = wp_generate_password(18, false);
        $userdata->user_email   = "jorge@jorge.com";
        $userdata->first_name   = "Jorge";
        $userdata->last_name    = "Mendez";
        $userdata->user_url     = "https://jorge.com";
        $userdata->description  = "Soy jorge y me considero profecional en mi trabajo";
        $userdata->role         = "editor";

        $user_id = username_exists($userdata->user_login);
        
        if (!$user_id && email_exists($userdata->user_email) == false) {
            $user_id = wp_insert_user($userdata);
            
            if (! is_wp_error($user_id)) {
                wp_mail($userdata->user_email, '!Bienvenidx', 'Su contraseña es: ' . $userdata->user_pass);
            }
        }
    }
    
    public function usuario_carlos_wpuser() {
        $userdata = new WP_User();
        
        $userdata->user_login   = "Carlos";
        $userdata->user_pass    = wp_generate_password(18, false);
        $userdata->user_email   = "carlos@carlos.com";
        $userdata->first_name   = "Carlos";
        $userdata->last_name    = "Mendez";
        $userdata->user_url     = "https://carlos.com";
        $userdata->description  = "Soy carlos y me considero profecional en mi trabajo";
        $userdata->role         = "editor";

        $user_id = username_exists($userdata->user_login);

        if (!$user_id && email_exists($userdata->user_email) == false) {
            $user_id = wp_insert_user($userdata);
            
            if (! is_wp_error($user_id)) {
                wp_mail($userdata->user_email, '!Bienvenidx', "Su contraseña es: {$userdata->user_pass}");
            }
        }
    }
    public function obtener_datos() {
        // $data = get_userdata(12);

        // $userdata = new WP_User(15);
        // echo $userdata->user_email;
        $userdata = new WP_User('Jorge');
        // echo $userdata->first_name;
        
        // echo "<br>";
        // $userdata = wp_get_current_user();
        // echo $userdata->user_email;
        // echo "</br>";
        
        // $data = get_user_by('email', 'maria@maria.com');
        // echo $data->user_url;

        // var_dump($data);
    }

    public function actualizar_usuario() {
        $userdata = [
            'ID' => 11,
            'first_name' => 'Laura',
            'last_name' => 'Sanchez'
        ];

        $user_id = wp_update_user($userdata);

        if (!is_wp_error($user_id)) {
            // echo "El usuario ha sido actualizado correctamente";

        } else {
            // var_dump($user_id);
        }
    }

    public function eliminar_usuario() {
        require_once ABSPATH . 'wp-admin/includes/user.php';

        wp_delete_user(16);
    }
}
