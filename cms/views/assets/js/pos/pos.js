/*=============================================
JD SLIDER
=============================================*/
$(".jd-slider").jdSlider({
  wrap: ".slide-inner",
  slideShow: 4,
  slideToScroll: 2,
  isLoop: true,
  responsive: [
    {
      viewSize: 768,
      settings: {
        slideShow: 1,
        slideToScroll: 1,
      },
    },
  ],
});

/*=============================================
CARGAR MÁS PRODUCTOS
=============================================*/
$(document).on("click", "#loadPageProducts", function () {
  if (
    Number($("#currentPageProducts").val()) <
    Number($("#totalPagesProducts").val())
  ) {
    var nextPage = Number($("#currentPageProducts").val()) + 1;

    if (Number($("#totalPagesProducts").val()) == nextPage) {
      $("#loadPageProducts").addClass("d-none");
      $("#loadPageProducts").removeClass("d-block");
    }

    $("#currentPageProducts").val(nextPage);

    var limit = Number($("#limitProduct").val());
    var startAt = nextPage * limit - limit;
    var category = $("#filterByCategory").val();
    var search = $("#searchProduct").val();

    loadMoreProducts(limit, startAt, category, search);
  } else {
    $("#loadPageProducts").addClass("d-none");
    $("#loadPageProducts").removeClass("d-block");
  }
});

/*=============================================
FILTRAR PRODUCTOS POR CATEGORÍAS
=============================================*/
$(document).on("click", ".loadCategory", function () {
  var category = $(this).attr("idCategory");
  $("#filterByCategory").val(category);

  var limit = Number($("#limitProduct").val());
  var startAt = 0;
  $("#currentPageProducts").val(1);
  var search = $("#searchProduct").val();

  loadMoreProducts(limit, startAt, category, search);
});

/*=============================================
FILTRAR PRODUCTOS POR BÚSQUEDA
=============================================*/
$(document).on("keyup", "#searchProduct", function () {
  var search = $(this).val();

  var limit = Number($("#limitProduct").val());
  var startAt = 0;
  $("#currentPageProducts").val(1);
  var category = $("#filterByCategory").val();

  loadMoreProducts(limit, startAt, category, search);
});

/*=============================================
FUNCIÓN PARA CARGAR MÁS PRODUCTOS
=============================================*/
function loadMoreProducts(limit, startAt, category, search) {
  if (search == "") {
    fncSweetAlert("loading", "Cargando productos...", "");
  }

  var data = new FormData();
  data.append("limit", limit);
  data.append("startAt", startAt);
  data.append("category", category);
  data.append("search", search);
  data.append("idOffice", $("#idOffice").val());

  $.ajax({
    url: "/ajax/pos.ajax.php",
    method: "POST",
    data: data,
    contentType: false,
    cache: false,
    processData: false,
    success: function (response) {
      var parsedResponse = JSON.parse(response);

      if (parsedResponse.htmlProducts != "") {
        if (startAt == 0) {
          $(".viewProducts").html(parsedResponse.htmlProducts);
        } else {
          $(".viewProducts").append(parsedResponse.htmlProducts);
        }

        if (
          parsedResponse.totalPagesProducts > 1 &&
          $("#currentPageProducts").val() < parsedResponse.totalPagesProducts
        ) {
          $("#loadPageProducts").removeClass("d-none");
          $("#loadPageProducts").addClass("d-block");
        }

        if (
          parsedResponse.totalPagesProducts <= 1 &&
          $("#currentPageProducts").val() == 1
        ) {
          $("#loadPageProducts").addClass("d-none");
          $("#loadPageProducts").removeClass("d-block");
        }
      }

      fncSweetAlert("close", "", "");
    },
  });
}

/*=============================================
CREAR NUEVA ÓRDEN
=============================================*/
$(document).on("click", ".newOrder", function () {
  if ($("#orderHeader").attr("mode") == "on") {
    if ($("#clientList").val() == "") {
      fncToastr(
        "error",
        "Antes de crear otra orden, agregue cliente a la orden actual"
      );
      return;
    }
  }
  if ($("#idOffice").val() > 0) {
    var data = new FormData();
    data.append("order", "new");
    data.append("idOffice", $("#idOffice").val());
    data.append("seller", $("#seller").attr("idAdmin"));
    data.append("token", localStorage.getItem("tokenAdmin"));

    $.ajax({
      url: "/ajax/pos.ajax.php",
      method: "POST",
      data: data,
      contentType: false,
      cache: false,
      processData: false,
      success: function (response) {
        if (response == "current cash error") {
          fncToastr("error", "No hay caja abierta el día de hoy");
          return;
        } else if (response == "yesterday cash error") {
          fncToastr("error", "No ha cerrado caja del día anterior");
          return;
        } else if (response == "logout") {
          fncSweetAlert(
            "error",
            "Token vencido, debe iniciar sesión nuevamente",
            setTimeout(() => {
              window.location = "/logout";
            }, 1250)
          );
        } else {
          if (JSON.parse(response).type == "new") {
            fncToastr("success", "Orden creada con éxito");
          }

          /*=============================================
	   			Organizamos cabecera de la orden 
	   			=============================================*/
          $("#orderHeader").attr("mode", "on");
          $("#orderHeader").attr("idOrder", JSON.parse(response).id_order);
          $("#orderHeader").removeClass("bg-light");
          $("#orderHeader").addClass("backColor");
          $("#orderHeader h6").html(
            "Orden # " + JSON.parse(response).transaction_order
          );

          /*=============================================
	   			Habilitamos la opción de agregar cliente 
	   			=============================================*/
          $("#addClient").removeClass("d-none");

          /*=============================================
	   			Habilitar módulo de productos añadidos
	   			=============================================*/
          $("#countProduct").removeClass("bg-light");
          $("#countProduct").addClass("backColor");
          $("#cleanListProduct").removeClass("d-none");
          $("#cleanListProduct").attr("idOrder", JSON.parse(response).id_order);
          $("#addProduct").html("");

          /*=============================================
	   			Habilitar módulo de totales
	   			=============================================*/
          $("#granTotal").removeClass("bg-light");
          $("#granTotal").addClass("bg-blue");

          /*=============================================
	   			Habilitar métodos de pago
	   			=============================================*/
          $("#payMethods").show();
        }
      },
    });
  } else {
    fncToastr("error", "Asignar sucursal a esta orden");
  }
});

/*=============================================
Elegir Cliente
=============================================*/

$(document).on("change", "#clientList", function () {
  updateOrder();
});

/*=============================================
Agregar nuevo Cliente
=============================================*/
$(document).on("click", "#addClient", function () {
  $("#modalClient").modal("show");
  $("#modalClient").on("shown.bs.modal", function () {
    $(".alertClient").remove();

    /*=============================================
    variables formulario de cliente
    =============================================*/
    var name_client = "";
    var surname_client = "";
    var cc_client = "";
    var email_client = "";
    var phone_client = "";
    var address_client = "";

    /*=============================================
    Capturamos cambios en el formulario de cliente
    =============================================*/
    $(".changeFormClient").change(function () {
      name_client = $("#name_client").val();
      surname_client = $("#surname_client").val();
      cc_client = $("#cc_client").val();
      email_client = $("#email_client").val();
      phone_client = $("#phone_client").val();
      address_client = $("#address_client").val();
    });

    /*=============================================
    guardar formulario de cliente
    =============================================*/
    $("#btnAddClient").click(function () {
      if (
        name_client != "" &&
        surname_client != "" &&
        cc_client != "" &&
        email_client != "" &&
        phone_client != "" &&
        address_client != ""
      ) {
        var data = new FormData();
        data.append("name_client", name_client);
        data.append("surname_client", surname_client);
        data.append("cc_client", cc_client);
        data.append("email_client", email_client);
        data.append("phone_client", phone_client);
        data.append("address_client", address_client);
        data.append("idOffice", $("#idOffice").val());
        data.append("token", localStorage.getItem("tokenAdmin"));

        $.ajax({
          url: "/ajax/pos.ajax.php",
          method: "POST",
          data: data,
          contentType: false,
          cache: false,
          processData: false,
          success: function (response) {
            if (response == "logout") {
              fncSweetAlert(
                "error",
                "Token vencido, debe iniciar sesión nuevamente",
                setTimeout(() => {
                  window.location = "/logout";
                }, 1250)
              );
            } else {
              $("#clientList").append(`
                <option value="${response}" selected>${name_client} ${surname_client} ${cc_client}</option>
               `);

              $("#modalClient").modal("hide");

              fncToastr("success", "El cliente se ha agregado con éxito");
              updateOrder();
            }
          },
        });
      } else {
        $(this)
          .parent()
          .parent()
          .before(
            `<div class="alert alert-danger rounded mx-3 alertClient">No pueden ir campos vacíos </div>`
          );
      }
    });
  });
});

/*=============================================
Agregar Producto
=============================================*/
$(document).on("click", ".addProductPos", function () {
  if ($("#orderHeader").attr("mode") == "on") {
    if ($("#clientList").val() == "") {
      fncToastr("error", "Antes de agregar producto elige un cliente");
      return;
    }

    var data = new FormData();
    data.append("idProduct", $(this).attr("idProduct"));
    data.append("idOrder", $("#orderHeader").attr("idOrder"));
    data.append("idClient", $("#clientList").val());
    data.append("seller", $("#seller").attr("idAdmin"));
    data.append("idOffice", $("#idOffice").val());
    data.append("token", localStorage.getItem("tokenAdmin"));

    $.ajax({
      url: "/ajax/pos.ajax.php",
      method: "POST",
      data: data,
      contentType: false,
      cache: false,
      processData: false,
      success: function (response) {
        if (response == "error stock") {
          fncToastr("error", "El producto no posee stock");
        } else if (response == "logout") {
          fncSweetAlert(
            "error",
            "Token vencido, debe iniciar sesión nuevamente",
            setTimeout(() => {
              window.location = "/logout";
            }, 1250)
          );
        } else if (response == "product exist") {
          fncToastr("error", "El producto ya está agregado a la orden");
        } else {
          /*=============================================
	        Pintar en el HTML el producto agregado
	        =============================================*/
          $("#addProduct").append(response);

          /*=============================================
	        Calcular los totales de la orden
	        =============================================*/
          calculateProducts();
        }
      },
    });
  } else {
    fncToastr("error", "Antes de agregar producto genere una orden");
  }
});

/*=============================================
Manipular Cantidad con botones
=============================================*/
$(document).on("click", ".btnQty", function () {
  /*=============================================
	Capturar id del producto
	=============================================*/
  var key = $(this).attr("key");

  /*=============================================
	Disminuir cantidad
	=============================================*/
  if ($(this).attr("type") == "btnMin") {
    if (Number($(".showQuantity_" + key).val()) > 1) {
      $(".showQuantity_" + key).val(
        Number($(".showQuantity_" + key).val()) - 1
      );
    }
  }

  /*=============================================
	Aumentar cantidad
	=============================================*/
  if ($(this).attr("type") == "btnMax") {
    $(".showQuantity_" + key).val(Number($(".showQuantity_" + key).val()) + 1);
  }
  changeQuantity(key);
});

/*=============================================
Manipular Cantidad manualmente
=============================================*/
$(document).on("change", ".showQuantity", function () {
  if ($(this).val() < 1) {
    $(this).val(1);
    fncToastr("error", "No puede ingresar número inferior a 1");
    return;
  }

  changeQuantity($(this).attr("key"));
});

/*=============================================
Cambio de cantidad
=============================================*/
function changeQuantity(key) {
  /*=============================================
	Capturamos descuento
	=============================================*/
  var discount = Number($(".deleteSale_" + key).attr("discountSale"));

  /*=============================================
	Actualizamos subtotal
	=============================================*/
  var pricePurchase =
    Number($(".pricePurchase_" + key).attr("originalPricePurchase")) *
    $(".showQuantity_" + key).val();
  $(".pricePurchase_" + key).attr("pricePurchase", pricePurchase);
  if (discount > 0) {
    pricePurchase = pricePurchase - pricePurchase * (discount / 100);
    $(".pricePurchase_" + key).html(money(pricePurchase.toFixed(2)));
  } else {
    $(".pricePurchase_" + key).html(money(pricePurchase.toFixed(2)));
  }

  /*=============================================
	Actualizamos cantidad y subtotal en base de datos
	=============================================*/
  var data = new FormData();
  data.append("idSaleUpdate", $(".deleteSale_" + key).attr("idSale"));
  data.append("qtySale", $(".showQuantity_" + key).val());
  data.append("subtotalSale", pricePurchase);
  data.append("token", localStorage.getItem("tokenAdmin"));
  $.ajax({
    url: "/ajax/pos.ajax.php",
    method: "POST",
    data: data,
    contentType: false,
    cache: false,
    processData: false,
    success: function (response) {
      if (response == "logout") {
        fncSweetAlert(
          "error",
          "Token vencido, debe iniciar sesión nuevamente",
          setTimeout(() => {
            window.location = "/logout";
          }, 1250)
        );
      } else {
        /*=============================================
        Calculamos Productos
        =============================================*/
        calculateProducts();
      }
    },
  });
}

/*=============================================
Cálculos de productos
=============================================*/
function calculateProducts() {
  /*=============================================
	Contabilizamos el total de productos
	=============================================*/
  var showQuantity = $(".showQuantity");
  var totalQty = 0;

  showQuantity.each((i) => {
    totalQty += Number($(showQuantity[i]).val());
  });

  $("#countProduct").html(totalQty);

  /*=============================================
	Contabilizamos los subtotales
	=============================================*/
  var pricePurchase = $(".pricePurchase");
  var totalPricePurchase = 0;

  pricePurchase.each((i) => {
    totalPricePurchase += Number($(pricePurchase[i]).attr("pricePurchase"));
  });

  /*=============================================
	Subtotal
	=============================================*/
  $("#subtotal").attr("subtotal", totalPricePurchase.toFixed(2));
  $("#subtotal").html(money(totalPricePurchase.toFixed(2)));

  /*=============================================
	Contabilizamos los descuentos e impuestos
	=============================================*/
  var deleteSale = $(".deleteSale");
  var calculateDiscount = 0;
  var totalPriceDiscount = 0;
  var calculateTax = 0;
  var totalPriceTax = 0;

  deleteSale.each((i) => {
    calculateDiscount =
      Number($(pricePurchase[i]).attr("pricePurchase")) *
      (Number($(deleteSale[i]).attr("discountSale")) / 100);
    totalPriceDiscount += calculateDiscount;

    if (Number($(deleteSale[i]).attr("discountSale")) > 0) {
      calculateTax =
        (Number($(pricePurchase[i]).attr("pricePurchase")) -
          Number(calculateDiscount)) *
        (Number($(deleteSale[i]).attr("taxSale")) / 100);
    } else {
      calculateTax =
        Number($(pricePurchase[i]).attr("pricePurchase")) *
        (Number($(deleteSale[i]).attr("taxSale")) / 100);
    }
    totalPriceTax += calculateTax;
  });

  /*=============================================
	Descuento
	=============================================*/
  $("#discount").attr("discount", totalPriceDiscount.toFixed(2));
  $("#discount").html(money(totalPriceDiscount.toFixed(2)));

  /*=============================================
	Impuesto
	=============================================*/
  $("#tax").attr("tax", totalPriceTax.toFixed(2));
  $("#tax").html(money(totalPriceTax.toFixed(2)));

  /*=============================================
	Gran Total
	=============================================*/
  var total =
    Number($("#subtotal").attr("subtotal")) -
    Number($("#discount").attr("discount")) +
    Number($("#tax").attr("tax"));
  $("#granTotal span").attr("granTotal", total.toFixed(2));
  $("#granTotal span").html(money(total.toFixed(2)));

  /*=============================================
	Actualizar Órden
	=============================================*/
  updateOrder();
}

/*=============================================
Actualizar cambios en la orden
=============================================*/
function updateOrder() {
  if ($("#orderHeader").attr("mode") == "on") {
    var idOrder = $("#orderHeader").attr("idOrder");
    var idClient = $("#clientList").val();
    var subtotalOrder = $("#subtotal").attr("subtotal");
    var discountOrder = $("#discount").attr("discount");
    var taxOrder = $("#tax").attr("tax");
    var totalOrder = $("#granTotal span").attr("granTotal");

    var data = new FormData();
    data.append("idOrderUpdate", idOrder);
    data.append("idClient", idClient);
    data.append("subtotalOrder", subtotalOrder);
    data.append("discountOrder", discountOrder);
    data.append("taxOrder", taxOrder);
    data.append("totalOrder", totalOrder);
    data.append("token", localStorage.getItem("tokenAdmin"));

    $.ajax({
      url: "/ajax/pos.ajax.php",
      method: "POST",
      data: data,
      contentType: false,
      cache: false,
      processData: false,
      success: function (response) {
        console.log(response);
        if (response == "logout") {
          fncSweetAlert(
            "error",
            "Token vencido, debe iniciar sesión nuevamente",
            setTimeout(() => {
              window.location = "/logout";
            }, 1250)
          );
        }
      },
    });
  }
}
