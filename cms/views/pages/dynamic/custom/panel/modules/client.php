<div class="row mb-4">
    <div class="col-7">
        <div class="form-group">
            <label class="mb-1" for="clientList">Cliente</label>
            <span class="btn badge badge-default border-0 float-end rounded backColor">Agregar</span>
            <select class="form-control rounded-start custom-select select2" id="clientList">
                <option value="">Buscar</option>
            </select>
        </div>
    </div>
    <div class="col-5">
        <div class="form-group">
            <label class="mb-1" for="seller">Vendedor</label>
            <div class="input-group">
                <input type="text" readonly class="form-control rounded-start bg-light" id="seller" value="<?php echo urldecode($_SESSION["admin"]->name_admin) ?>">
                <span class="input-group-text rounded-end bg-light"><i class="fas fa-user-tie"></i></span>
            </div>
        </div>
    </div>
</div>