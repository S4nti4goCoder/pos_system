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
  if ($("#idOffice").val() > 0) {
    var data = new FormData();
    data.append("order", "new");
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
