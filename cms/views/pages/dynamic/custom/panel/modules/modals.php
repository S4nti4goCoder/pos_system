<!-- =======================================
Modal para agregar cliente
==========================================-->
<div class="modal fade" id="modalClient">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content rounded">
            <div class="modal-header">
                <h4 class="modal-title">Agregar Cliente</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <div class="row row-cols-1 row-cols-sm-2  my-3">
                    <div class="col">
                        <div class="form-floating">
                            <input type="text" class="form-control changeFormClient rounded" id="name_client" placeholder="Ingresar Nombre">
                            <label for="name_client">Nombre</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-floating">
                            <input type="text" class="form-control changeFormClient rounded" id="surname_client" placeholder="Ingresar Apellido">
                            <label for="surname_client">Apellido</label>
                        </div>
                    </div>
                </div>
                <div class="row row-cols-1 row-cols-sm-2  my-3">
                    <div class="col">
                        <div class="form-floating">
                            <input type="text" class="form-control changeFormClient rounded" id="cc_client" placeholder="Ingresar Documento">
                            <label for="cc_client">Documento</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-floating">
                            <input type="email" class="form-control changeFormClient rounded" id="email_client" placeholder="Ingresar Correo">
                            <label for="email_client">Correo Electrónico</label>
                        </div>
                    </div>
                </div>
                <div class="row row-cols-1 row-cols-sm-2  my-3">
                    <div class="col">
                        <div class="form-floating">
                            <input type="text" class="form-control changeFormClient rounded" id="phone_client" placeholder="Ingresar Teléfono">
                            <label for="phone_client">Teléfono</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-floating">
                            <input type="text" class="form-control changeFormClient rounded" id="address_client" placeholder="Ingresar Dirección">
                            <label for="address_client">Dirección</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer d-flex justify-content-between">
                <div>
                    <button type="button" class="btn btn-default border rounded" data-bs-dismiss="modal">Cerrar</button>
                </div>
                <div>
                    <button type="button" class="btn btn-default backColor rounded" id="btnAddClient">Guardar</button>
                </div>
            </div>
        </div>
    </div>
</div>