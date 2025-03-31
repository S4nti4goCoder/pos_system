<div class="container mt-3 px-0">
    <h6 class="float-start">Productos Añadidos <span class="badge badge-default	<?php if (empty($order)): ?> bg-light <?php else: ?> backColor <?php endif ?>  rounded" id="countProduct">0</span></h6>
    <span class="float-end text-orange <?php if (empty($order)): ?> d-none <?php endif ?> btn" id="cleanListProduct" idOrder><i class="fas fa-broom"></i> limpiar</span>
    <div class="clearfix"></div>
    <table class="table table-striped table-borderless">
        <thead>
            <tr class="text-center">
                <th>Producto</th>
                <th>Cantidad</th>
                <th>Subtotal</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody id="addProduct">
            <tr>
                <td>
                    <div>
                        <img src="http://cms.pos.com/views/assets/files/67b51425c18eb41.png" class="me-auto rounded mt-2 float-start" style="width:60px !important; height:60px !important">
                        <div class="ms-2 float-start">
                            <span class="badge badge-default backColor rounded" style="font-size:10px">PT0014</span>
                            <span class="badge badge-default bg-red rounded ms-1" style="font-size:10px">30%</span>
                            <h6 class="font-weight-bold  mb-0 text-muted"><strong>Yoga Book 9i</strong></h6>
                            <small>$ 979.02 <span class="ms-1 text-red" style="font-size: 12px;"><s>$ 1398.60 </s></span></small>
                        </div>
                    </div>
                </td>
                <td class="text-center">
                    <div class="d-flex justify-content-center">
                        <div class="input-group mb-3 mt-2" style="width:160px">
                            <span class="input-group-text rounded-start bg-light btnQty" type="btnMin" style="cursor:pointer">
                                <i class="bi bi-dash-lg"></i>
                            </span>
                            <input type="number" class="form-control text-center showQuantity" style="font-size: 12px;" value="1">
                            <span class="input-group-text rounded-end bg-light btnQty" type="btnMin" style="cursor:pointer">
                                <i class="bi bi-plus-lg"></i>
                            </span>
                        </div>
                    </div>
                </td>
                <td>
                    <h6 class="text-center my-3">$ 979.02 </h6>
                </td>
                <td class="text-center">
                    <button type="button" class="btn btn-sm rounded ms-1 mt-2 py-2 px-3 bg-red">
                        <i class="bi bi-trash"></i>
                    </button>
                </td>
            </tr>
        </tbody>
    </table>
</div>