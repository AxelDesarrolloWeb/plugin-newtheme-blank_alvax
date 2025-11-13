/**
 * Archivo js de la parte de la administración
 */

$ = jQuery.noConflict();

// Variables globales
var modalNombre;
var modalId;
var popupNombre;
var popupId;

// variables globales marco multimedia
var marco;
var imgDataEdit = $(".block-02 #imgFondo");
var imagen = $(".campo-imagen #imagen img");

// Ajax edit pop-up
var tituloDataEdit = $(".block-02 #titulo");
var subtituloDataEdit = $(".block-02 #subtitulo");
var btnTitle = $("#camposSwitch #btnText1");
var btnCheck = $("#switch input[type=checkbox]");
var btnCheck1 = $("#camposSwitch #newTab");
var btnCheck2 = $("#camposSwitch #sameTab");
var btnUrl = $("#camposSwitch #btnUrl");
var URLactual = window.location;

// Interacciones del admin: abrir modal y enviar formulario
(function ($) {
  $(function () {
    // Evitar navegación por enlaces con href="#"
    $(document).on("click", 'a[href="#"]', function (e) {
      e.preventDefault();
    });

    // Abrir modal de creación
    $("#btn_crear").on("click", function (e) {
      e.preventDefault();
      var el =
        document.getElementById("resPopupCreateModal") ||
        document.getElementById("Modalpopup");
      if (el && window.bootstrap && bootstrap.Modal) {
        var instance =
          (bootstrap.Modal.getInstance && bootstrap.Modal.getInstance(el)) ||
          new bootstrap.Modal(el);
        instance.show();
      }
    });

    // Envío del formulario del modal nuevo
    $(document).on("submit", "#resPopupCreateForm", function (e) {
      e.preventDefault();
      var modalNombre = $("#resPopupName").val().trim();
      if (!modalNombre) {
        return;
      }
      var modalId = Math.floor(Math.random() * 100000);

      $.ajax({
        url:
          typeof dataPopup !== "undefined"
            ? dataPopup.url
            : typeof ajaxurl !== "undefined"
            ? ajaxurl
            : "",
        type: "post",
        dataType: "json",
        data: {
          action: "res_data_popup",
          nonce:
            (typeof dataPopup !== "undefined" && dataPopup.seguridad) || "",
          nombre: modalNombre,
          id: modalId,
          tipo: "add",
          datos_u: (typeof dataPopup !== "undefined" && dataPopup.objeto) || [],
        },
        success: function (res) {
          var el = document.getElementById("resPopupCreateModal");
          if (el && window.bootstrap && bootstrap.Modal) {
            var instance = bootstrap.Modal.getInstance(el);
            if (instance) instance.hide();
          }
          var item =
            res && res.item ? res.item : { nombre: modalNombre, id: modalId };
          var base =
            typeof dataPopup !== "undefined" && dataPopup.pageUrl
              ? dataPopup.pageUrl
              : window.location.origin + "/wp-admin/admin.php?page=res_popup";
          window.location.href =
            base +
            "&edit=" +
            encodeURIComponent(item.nombre) +
            "&id=" +
            encodeURIComponent(item.id);
        },
      });
    });

    // Botón guardar del modal antiguo (res-modal.php)
    $(document).on("click", "#btnGuardar", function (e) {
      e.preventDefault();
      var modalNombre = $("#dataNom").val().trim();
      if (!modalNombre) {
        return;
      }
      var modalId = Math.floor(Math.random() * 100000);

      $.ajax({
        url:
          typeof dataPopup !== "undefined"
            ? dataPopup.url
            : typeof ajaxurl !== "undefined"
            ? ajaxurl
            : "",
        type: "post",
        dataType: "json",
        data: {
          action: "res_data_popup",
          nonce:
            (typeof dataPopup !== "undefined" && dataPopup.seguridad) || "",
          nombre: modalNombre,
          id: modalId,
          tipo: "add",
          datos_u: (typeof dataPopup !== "undefined" && dataPopup.objeto) || [],
        },
        success: function (res) {
          var el = document.getElementById("Modalpopup");
          if (el && window.bootstrap && bootstrap.Modal) {
            var instance = bootstrap.Modal.getInstance(el);
            if (instance) instance.hide();
          }
          var item =
            res && res.item ? res.item : { nombre: modalNombre, id: modalId };
          var base =
            typeof dataPopup !== "undefined" && dataPopup.pageUrl
              ? dataPopup.pageUrl
              : window.location.origin + "/wp-admin/admin.php?page=res_popup";
          window.location.href =
            base +
            "&edit=" +
            encodeURIComponent(item.nombre) +
            "&id=" +
            encodeURIComponent(item.id);
        },
      });
    });
  });
})(jQuery);

// Botón para volver atrás
$(".block-01 #volverAtras").on("click", function () {
  location.href = "?page=res_popup";
});

// Botón switch call to action
$(document).ready(function () {
  $("#camposSwitch").hide();
  $(".switch").on("click", function () {
    var check = $("#switch input[type=checkbox]");
    if (check.is(":checked")) {
      $("#camposSwitch").show(1000);
    } else {
      $("#camposSwitch").hide(1000);
    }
  });
});

// Marco multimedia
$(document).ready(function () {
  $("#imgFondo").on("click", function (e) {
    e.preventDefault();

    if (marco) {
      marco.open();
      return;
    }

    marco = wp.media({
      frame: "select",
      title: "Seleccionar imagen para pop-up",
      button: {
        text: "usar esta imagen",
      },
      multiple: false,
      library: {
        type: "image",
      },
    });

    marco.on("select", function () {
      var imgPopup = marco.state().get("selection").first().toJSON();

      // console.log(imgPopup);

      var urlLimpia = limpiar_ruta(imgPopup.url);
      imgDataEdit.val(urlLimpia);
      imagen.attr("src", urlLimpia);
    });

    marco.open();
  });
});

// limpiar la ruta
function limpiar_ruta(url) {
  // Servidor Local
  var local = "/localhost/";

  if (local.test(local)) {
    var url_pathname = location.pathname;
    var indexPost = url_pathname.indexOf("wp-admin");
    var url_pos = url_pathname.substr(0, indexPost);
    var url_delete = location.protocol + "//" + location.host + url_pos;

    console.log(url_delete);

    // http://curso02.local/

    return url_pos + url.replace(url_delete, "");
  } else {
    // servidor remoto
    var url_real = location.protocol + "//" + location.hostname;
    return url.replace(url_real, "");
  }
}

// Ajax data edit pop-up
$(document).ready(function () {
  $(".block-02 #btnSave").on("click", function () {
    var titulo = tituloDataEdit.val();
    var subtitulo = subtituloDataEdit.val();
    var imagenUrl = imgDataEdit.val();
    var textDataEdit = tinyMCE.activeEditor.getContent();
    var dataNombre = $(this).attr("data-nombre");
    var buttonCheck = btnCheck1.is(":checked");
    var buttonCheck1 = btnCheck1.is(":checked");
    var buttonUrl = btnUrl.val();

    $.ajax({
      url: dataCreatePopup.url,
      type: "post",
      dataType: "json",
      data: {
        action: "res_create_popup",
        nonce: dataCreatePopup.seguridad,
        nombre: dataNombre,
        titulo: titulo,
        subtitulo: subtitulo,
        imagen: imagenUrl,
        texto: textDataEdit,
        buttonCheck: buttonCheck,
        buttonTitle: buttonTitle,
        buttonCheck1: buttonCheck1,
        buttonCheck2: buttonCheck2,
        buttonUrl: buttonUrl,
        tipo: "create",
      },
      success: function (res) {
        locationi.href = URLactual;
        console.log(res.data);
        console.log(res.objeto);
      },
    });
  });
});
