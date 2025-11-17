<?php

/**
 * Proporcionar una vista del área de la administración para el plugin
 *
 * Este archivo se utiliza para marcar los aspectos de administración del plugin.
 *
 * https://www.linkedin.com/in/alvax
 * @since desde 1.0.0
 *
 * @package newtheme-blank
 * @subpackage newtheme-blank/admin/partials
 *
 * Este archivo debe consistir principalmente en HTML con un poco de PHP. 
 */


/**
 * Consulta sql
 */
$sql = "SELECT id, nombre FROM " . NEW_TABLE;
$results = $this->db->get_results($sql);

?>

<!-- Modal Structure -->
<div class="modal" id="add_new_table">
    <div class="modal-content">

        <!-- preload -->
        <div class="preload">
            <div class="preloader-wrapper big active">
                <div class="spinner-layer spinner-blue-only">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper rigth">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
        </div>

        <form action="" method="post">
            <div class="row">
                <div class="input-field col s6">
                    <input type="text" id="nombre-tabla" class="validate">
                    <label for="nombre">Nombre de la tabla</label>
                </div>
            </div>

            <div class="row">
                <div class="col s6">
                    <button class="btn waves-effect waves-light" type="button" name="action" id="crear-tabla">
                        crear <i class="material-icons right">add</i>
                    </button>
                </div>
            </div>
        </form>

    </div>
</div>

<div class="had-container">
    <!-- Título de la página -->
    <div class="row">
        <div class="col s12">
            <h5><?php echo esc_html(get_admin_page_title()); ?></h5>
        </div>
    </div>

    <!-- Botón para crear una nueva tabla -->
    <div class="row">
        <div class="col s4">
            <a class="add-new-table btn-floating pulse">
                <i class="material-icons">add</i>
            </a>

            <span>Crear nueva tabla de datos</span>
        </div>
    </div>

    <!-- Tabla -->
    <div class="row">
        <div class="col s4">
            <table>
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Shortcode</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>

                <tbody>
                    <?php
                    foreach ($results as $key => $r) {
                        $id = $r->id;
                        $nombre = $r->nombre;

                        $datos = "
                        <tr data-table='$id' id='dataTable{$id}'>
                        <td data-new-name='$nombre'>$nombre</td>
                        <td>[newdatos id='$id']</td>
                        <td>
                            <span data-new-id-edit='$id' class='btn btn-floating waves-effect waves-light'>
                                <i class='tiny material-icons'>mode_edit</i>
                            </span>
                        </td>
                        <td><span class='btn btn-floating waves-effect weves-light red darken-1'>
                                <i class='tiny material-icons'>close</i>
                            </span>
                        </td>
                    </tr>
                        ";

                        echo $datos;
                    }
                    ?>

                </tbody>
            </table>
        </div>
    </div>
</div>