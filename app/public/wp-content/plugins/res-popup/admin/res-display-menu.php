<?php

/**
 * Aquí crearemos el html de la primera página
 */

$dato = get_option('res_popup');
$dato = is_array($dato) ? $dato : array();
?>

<div class="container-fluid page-menu" style="background-color: #f1f1f1">
    <h3>Dashboard</h3>
    <div class="mb-3">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#resPopupCreateModal">Crear</button>
    </div>
    <div class="row">
        <!-- bloque 01 -->
        <div class="col-sm-12">
            <div class="card mb-3" style="max-width: 100%;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="<?php echo plugin_dir_url(__FILE__) . 'imgs/10.1 img-pop-up.png'; ?>" alt="" class="img-fluid">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"> Title </h5>
                            <p class="card-text">
                                Gana dinero promocionando algún tipo de producto o servicio
                            </p>
                            <p class="card-text">
                                <small class="text-muted">Convierte tus visitas en ganancias</small>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- bloque 02 -->
        <div class="col-sm-12">
            <div class="card text-dark mb-3">
                <div class="card-header">
                    <h6 class="res-box-title">
                        Pop-ups
                    </h6>

                </div>
                <div class="card-body">
                    <p class="card-text">
                        En esta parte podrás editar o eliminar tu pop-up, cada que crees uno aparezerá justo debajo con su respectivo shortcode para que lo pegues en las páginas dónde quieres que aparezca.
                    </p>

                    <table class="table" id="tableId">
                        <thead>
                            <tr>
                                <th scope="col">Nombre</th>
                                <th scope="col">Shortcode</th>
                                <th scope="col">Opciones</th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php
                            if (!empty($dato) && is_array($dato)) {
                                foreach ($dato as $key => $datos):
                                    $item   = (isset($datos[0]) && is_array($datos[0])) ? $datos[0] : $datos;
                                    $nombre = isset($item['nombre']) ? $item['nombre'] : '';
                                    $id     = isset($item['id']) ? $item['id'] : '';

                                    if ($nombre === '' && $id === '') {
                                        continue;
                                    }

                                    $edit_url = admin_url('admin.php?page=res_popup&edit=' . rawurlencode($nombre) . '&id=' . rawurlencode($id));

                                    $output =
                                        "<tr id='" . esc_attr($id) . "' data-nombre='" . esc_attr($nombre) . "'>" .
                                            "<th scope='row'>" . esc_html($nombre) . "</th>" .
                                            "<td>Pop up navidad</td>" .
                                            "<td>" .
                                                "<a href='" . esc_url($edit_url) . "' type='button' class='btn btn-outline-info' id='btn_editar'><span class='dashicons dashicons-welcome-write-blog'></span></a>" .
                                                "<a href='#' type='button' class='btn btn-outline-danger' id='btn_eliminar'><span class='dashicons dashicons-trash'></span></a>" .
                                            "</td>" .
                                        "</tr>";
                                    echo $output;
                                endforeach;
                            } else {
                                echo '';
                            }
                            ?>
                        </tbody>
                    </table>

                    <!-- botón crear -->
                    <button type="button" class="btn btn-primary text-uppercase btn-crear" id="btn_crear" data-bs-toggle="modal" data-bs-target="#resPopupCreateModal">
                        <span class="dashicons dashicons-plus"></span> Crear
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="resPopupCreateModal" tabindex="-1" aria-labelledby="resPopupCreateTitle" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="resPopupCreateTitle">Creando el Pop-Up</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Inserta el nombre para tu modal y haz click en guardar</p>
                <form id="resPopupCreateForm">
                    <div class="mb-3">
                        <label for="resPopupName" class="form-label">Nombre</label>
                        <input type="text" id="resPopupName" class="form-control" required>
                    </div>
                    <div class="modal-footer px-0">
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php include 'res-modal.php'; ?>