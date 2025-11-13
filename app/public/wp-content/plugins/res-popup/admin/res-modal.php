<!-- modal -->
<div id="Modalpopup" class="modal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Creando el header</h5>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="close"></button>
            </div>
            <div class="modal-body">
                <p class="text-center">
                    inserta el nombre para tu modal y haz click en guardar
                </p>

                <!-- formulario -->
                <form action="" method="post">
                    <div class="mb-3 row">
                        <label for="inputPassword" class="col-sm-2 col-form-label">Nombre</label>
                        <div class="col-sm-10">
                            <input type="text" id="dataNom" class="form-control" data-id="<?php $id ?>" value="">
                        </div>
                    </div>

                    <div class="divider">
                        <div class="line"></div>
                        <div class="res-data-button">
                            <a href="#" class="btn btn-primary" id="btnGuardar">Guardar</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>