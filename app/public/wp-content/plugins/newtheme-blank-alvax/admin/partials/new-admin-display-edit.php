<?php

/**
 * Proporcionar una vista del área de administración para el plugin
 * Este archivo se utiliza para marcar los aspectos de administración del plugin.
 *
 * @link https://www.linkedin.com/in/alvax
 * @since desde 1.0.0
 *
 * @package newtheme-blank
 * @subpackage newtheme-blank/admin/parcials
 *
 * Este archivo debe consistir principalmente en HTML con un poco de PHP.
 */

$id = $_GET['id'];

/**
 * Consulta sql
 */

$sql = $this->db->prepare("SELECT data FROM " . NEW_TABLE . " WHERE id=%d", $id);
$resultado = $this->db->get_var($sql);

?>

<!-- Modal Structure -->

<div class="modal" id="addUpdate">
    <div class="modal-content">

        <!-- pleload -->
        <div class="preload">
            <div class="preloader-wrapper big active">
                <div class="spinner-layer spinner-blue-only">

                </div>
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div>
                <div class="gap-patch">
                    <div class="circle"></div>
                </div>
                <div class="circle-clipper right">
                    <div class="circle"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<form action="" method="post" class="formularioDataUser">
    <div class="row">
        <input type="hidden" id="idTable" value="<?php echo $id; ?>">
        <div class="input-field col s6">
            <input type="text" id="nombres" class="validate">
            <label for="nombres">Nombres</label>
        </div>
        <div class="input-field col s6">
            <input type="text" id="apellidos" class="validate">
            <label for="apellidos">Apellidos</label>
        </div>
        <div class="input-field col s6">
            <input type="email" id="email" class="validate" required>
            <label for="email">Email</label>
        </div>
    </div>

    <!-- Botón para subir archivos -->
    <div class="row">
        <div class="file-field input-field col s10">
            <div class="btn" id="selectimg">
                <span>
                    Seleccionar imagen
                    <i class="material-icons right">file_upload</i>
                </span>
                <input type="file">
            </div>
            <div class="file-path-wrapper">
                <input type="text" id="selectimgval" class="file-path validate">
            </div>
        </div>
    </div>

    <!-- div para mostrar imagen seleccionada -->
    <div class="col s2">
        <div class="marcoImagen">
            <img src="" alt="">
        </div>
    </div>

    <div class="row">
        <div class="col s6">
            <button id="agregar" class="btn waves-effect waves-light" type="button" name="action">
                Agregar <i class="material-icons right">add</i>
            </button>
            <button id="actualizar" class="btn waves-effect waves-light" type="button" name="action">
                Actualizar <i class="material-icons right">cached</i>
            </button>
        </div>
    </div>

    <div class="had-container">
        <!-- Título de la página -->
        <div class="row">
            <div class="col s12">
                <h5><?php echo esc_html(get_admin_page_title()); ?></h5>
            </div>
        </div>

        <!-- Botón para volver atrás -->
        <div class="row">
            <div class="col s4">
                <a href="?page=new_data" class="btn-floating waves-effect waves_light orange darken-1">
                    <i class="material-icons">arrow_back</i>
                </a>
            </div>
        </div>

        <!-- Botón para agregar usuario -->
        <div class="row">
            <div class="col s4">
                <a href="" class="addItem btn-floating pulse">
                    <i class="material-icons">add</i>
                </a>
                <span>Agregar usuario</span>
            </div>
        </div>

        <!-- Tabla -->
        <div class="row">
            <div class="col s4">
                <table>
                    <thead>
                        <tr>
                            <th></th>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>Email</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php echo $this->crud_json->read_user($resultado);
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</form>