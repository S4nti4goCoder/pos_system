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
        <tbody id="addProduct"></tbody>
    </table>
</div>