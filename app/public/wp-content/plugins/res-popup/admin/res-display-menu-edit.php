<?php
$nombre = sanitize_text_field($_GET['edit'] ?? '');
$id = sanitize_text_field($_GET['id'] ?? '');
$nombrePopup = sanitize_text_field($nombre . '-ID' . $id);

$dataEditPopup = get_option($nombrePopup);
var_dump($dataEditPopup);

echo "Hola, estás en la página para editar el pop-up \"$nombre\" con el id: $id";
?>

<div class="container-fluid edit-popup" style="background-color: #f1f1f1">
    <h3>Página del pop up</h3>
    <div class="row block-01">
        <div class="card text-dark bg-light mb3 mt-3" style="max-width: 90%">
            <h5><?php echo $nombre ?></h5>
        </div>

        <div class="btn-volver-atras px-0">
            <button class="btn btn-warning" type="button" id="volverAtras">
                <span class="dashicons dashicons-undo"></span>VOLVER ATRÁS
            </button>
        </div>

        <div class="row block-02">
            <form action="" method="post">
                <!-- bloque 1 -->
                <div class="col-sm-12">
                    <div class="card text-dark bg-light mb-3" style="max-width: 100%;">
                        <div class="card-body">
                            <div class="buttonsActions">
                                <button class="btn btn-secondary" type="button" id="btnPreview">
                                    <span class="dashicons dashicons-visibility"></span>Previsualizar
                                </button>

                                <button class="btn btn-info" type="button" id="btnSave" data-nombre="
                                <?php $nombrePopup; ?>">
                                    <span class="dashicons dashicons-cloud-upload"></span>Guardar
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Bloque 2 -->
                <div class="col-sm-12">
                    <div class="card border-light mb-3" style="max-width:100%">
                        <div class="card-header">
                            <h5>Contenido</h5>
                        </div>
                        <div class="card-body">
                            <div class="row campo-titulo">
                                <div class="col-sm-12 col-md-4">
                                    <h6>Título</h6>
                                    <p>Añade un subtítulo y título para tu pop-up</p>
                                </div>
                                <div class="col-sm-12 col-md-8">
                                    <div class="mb-3">
                                        <label for="título" class="form-label">Título (opcional)</label>
                                        <input type="text" id="titulo" class="form-control" placeholder="Título">

                                    </div>

                                    <div class="mb-3">
                                        <label for="subtitulo" class="form-label">Subtítulo (opcional)</label>
                                        <input type="text" id="titulo" class="form-control" placeholder="Subtítulo">
                                    </div>
                                </div>

                                <div class="col-12 col-sm-12">
                                    <div class="divider">

                                    </div>
                                </div>
                            </div>

                            <!-- imagen -->
                            <div class="row campo-imagen">
                                <div class="col-sm-12 col-md-4">
                                    <h6>Imagen</h6>
                                    <p>Añade aquí una imagen de fondo para tu pop up</p>
                                </div>
                                <div class="col-sm-12 col-md-8">
                                    <h5>Imagen de fondo</h5>
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" id="imgFondo" placeholder="#" aria-label="#" aria-describedby="basic-addon2">
                                        <span class="input-group-text" id="basic-addon2">@</span>
                                    </div>
                                    <div class="imagen mt-3" id="imagen">
                                        <img src="http://curso02.local/wp-content/uploads/2020/08/ededf.jpg" alt="Imagen" class="img-fluid">
                                    </div>
                                </div>
                            </div>


                            <!-- My contennnido -->
                            <div class="row campo-contenido">
                                <div class="col-sm-12 col-md-4">
                                    <h6>Mi contenido</h6>
                                    <p>Añade aquí el texto para tu pop-up</p>
                                </div>
                                <div class="col-sm-12 col-md-8">
                                    <div class="mb-3" id="myContent">
                                        <?php
                                        $content = '';
                                        $editor_id = $id;
                                        $args = array(
                                            'tinymce' => true,
                                            'content_css' => '/wp-content/themes/mytheme/css/tinymce-editor.css',
                                            'textarea_rows' => 8
                                        );


                                        $texto = wp_editor($content, $editor_id, $args);

                                        ?>
                                    </div>
                                    <div class="col-12 col-sm-12">
                                        <div class="divider"></div>
                                    </div>
                                </div>
                            </div>

                            <!-- call to action -->
                            <div class="row campo-callToAction">
                                <div class="col-sm-12 col-md-4">
                                    <h6>LLamada a la acción</h6>
                                    <p>Añade aquí el el nombre para tu botón a la llamada a la acción, por ejemplo, "ver más" o ver el "siguiente enlace" y luego añade la url hacia donde quieres redirigir.</p>
                                </div>
                                <div class="col-sm-12 col-md-8">
                                    <div class="switch" id="switch">
                                        <label>
                                            <input type="checkbox" id="ctaEnabled">
                                            <div class="slider round"></div>
                                        </label>
                                    </div>

                                    <div class="card-body row">
                                        <div class="col-12 col-sm-6">
                                            <div class="mb-3">
                                                <label for="btnText1" class="form-label">Título para el botón</label>
                                                <input type="text" id="btnText1" class="form-control" placeholder="Título para el botón">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6">
                                            <div class="mb-3">
                                                <h6>Abrir el Link</h6>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="tabsOptions" id="sameTab" value="same" checked>
                                                    <label class="form-check-label" for="sameTab">Misma Ventana</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="tabsOptions" id="newTab" value="new">
                                                    <label class="form-check-label" for="newTab">Nueva Ventana</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12">
                                            <div class="mb-3">
                                                <label for="btnUrl" class="form-label">URL del botón</label>
                                                <input type="text" id="btnUrl" placeholder="Escriba la URL aquí para el botón" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-12">
                                    <div class="divider"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>