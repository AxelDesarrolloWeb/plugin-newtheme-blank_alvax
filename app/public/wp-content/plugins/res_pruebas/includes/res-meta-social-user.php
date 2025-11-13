<?php

class RES_Meta_Social_User
{
    public function add_meta_fields($user)
    {
        $user_id = is_object($user) ? $user->ID : (int) $user;

        $social = get_user_meta($user_id, 'res_social', true);

        if (!empty($social) && is_array($social)) {
            $facebook = isset($social['facebook']) ? $social['facebook'] : '';
            $twitter = isset($social['twitter']) ? $social['twitter'] : '';
            $instagram = isset($social['instagram']) ? $social['instagram'] : '';
        } else {
            $facebook = '';
            $twitter = '';
            $instagram = '';
        }

        $output = "
            <table class='form-table'>
            <tr class='form-field form-required user-facebook-wrap'>
                <th scope='row'><label for='facebook'>Facebook</label></th>
                <td>
                    <input type='text' name='res_social[facebook]' id='facebook' size='40' value='$facebook'>
                    <p class='description'>Agregar la url de facebook</p>
                </td>
            </tr>
            </table>

            <table class='form-table'>
            <tr class='form-field form-required user-twitter-wrap'>
                 <th scope='row'><label for='twitter'>twitter</label></th>

            <td><input type='text' name='res_social[twitter]' id='twitter' size='40' value='$twitter'>
            <p class='description'>Agregar la url de twitter</p>
            </td>
            </tr>
            </table>

            <table class='form-table'>
            <tr class='form-field form-required user-instagram-wrap'>
            <th scope='row'><label for='instagram'>instagram</label></th>

            <td><input type='text' name='res_social[instagram]' id='instagram' size='40' value='$instagram'>
            <p class='description'>Agregar la url de instagram</p>
            </td>
            </tr>
            </table>
            ";
        echo $output;
    }

    public function save_meta_fields($user_id) {
        if (!current_user_can('edit_user')) {
            return;
        }

        if (isset($_POST['res_social'])) {
            // Sanitizamos los campos
            $_POST['res_social']['facebook'] = sanitize_text_field($_POST['res_social']['facebook']);
            $_POST['res_social']['twitter'] = sanitize_text_field($_POST['res_social']['twitter']);
            $_POST['res_social']['instagram'] = sanitize_text_field($_POST['res_social']['instagram']);

            update_user_meta($user_id, 'res_social', $_POST['res_social']);
        }
    }
}
