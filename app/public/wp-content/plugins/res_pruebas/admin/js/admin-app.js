$ = jQuery.noConflict();

$(document).ready(function () {
  // alert('funciona');

  $("#submit").on("click", function (e) {
    alert("funciona");

    e.preventDefault();

    var dato = $("#nombre").val();

    // Método-Consulta Ajax
    $.ajax({
      url: userinfo.ajaxurl,
      type: "post",
      dataType: "json", // CORRECCIÓN
      data: {
        action: "ajax-menu_opciones",
        consulta: dato,
      },
      success: function (res) {
        console.log(res);

        if (!res || res.length <= 0) {
          alert(traduccion.mensajes_users.mensaje1);
          return;
        }

        for (var i = 0; i < res.length; i++) {
          var result = `
                    <div class="row">
                        <div class="col-2">
                            <p>${res[i].ID}</p>
                        </div>
                        <div class="col-3">
                            <p>${res[i].display_name}</p>
                        </div>
                        <div class="col-3">
                            <p>${res[i].user_login}</p>
                        </div>
                        <div class="col-3">
                            <p>${res[i].user_email}</p>
                        </div>
                    </div>
                    `;

          $(".contenidoAjax").append(result);
        }
      },
      error: function (xhr, status, err) {
        console.error("AJAX error", status, err);
      },
    });

    // ya no va aquí el código del gestor multimedia
  });

  // Gestor Multimedia — debe estar aquí (dentro de document.ready, fuera del click)
  var marco; // reutilizar frame si ya fue abierto
  $(".btnMarcoMedia").on("click", function (e) {
    e.preventDefault();

    if (marco) {
      marco.open();
      return;
    }

    marco = wp.media({
      frame: "post",
      title: "Selecciona una imagen",
      button: {
        text: "Usar esta imagen",
      },
      multiple: true,
      library: {
        order: "DESC",
        orderby: "name",
        // type: "image, application/pdf",
      },
    });

    var images = $(".marco");

    marco.on("attach", function () {
      // var seleccion = marco.state().get('selection').first();

      // var objeto = marco.state().get('selection').toArray()[0].attributes.url;
      // var objeto = marco.state().get('selection').toJSON()[0].url;
      // var objeto = marco.state().get('selection').first().toJSON().url;
      // var objeto = marco.state().get('selection').first().toJSON();
      var objeto = marco.state().get("selection").toJSON();
      // console.log(objeto);

      // $('.marco .seleccion').attr('src', objeto);
      $(".seleccion").attr("src", objeto.url);

      $.ajax({
        url: res_datos.ajaxurl,
        type: "post",
        data: {
          action: "res_ajax_ruta",
          urls: objeto,
        },
        success: function (res) {
          $.each(objeto, function (i, v) {
            images.append(
              "<img style='width: 400px' class'seleccion' src='" + v.url + "'>"
            );
            console.log(v.url);
          });

          alert("Ejecutando el método ready");
        }
      });

      // if (seleccion) {
      //   var url = seleccion.toJSON().url;
      //   // ejemplo: poner la URL en un input con id #imagen_url
      //   $("#imagen_url").val(url);
      // }
    });

    marco.open();
  });
});
