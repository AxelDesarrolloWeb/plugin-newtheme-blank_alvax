(function( $ ) {
	'use strict';

	/**
	 * Variables globales
	 */
	var preload 	= $( '.preload' );
	var urledit 	= "?page=new_data&accion=edit&id=";
	var marcoImagen = $('.marcoImagen img');
	var marco;
	var urlimgUser 	= $( '#selectimgval' );
	var idTable 	= $('#idTable').val();

	var	nombres 	= $( '#nombres' );
	var	apellidos 	= $( '#apellidos' );
	var	email 		= $( '#email' );


	/**
	 * Todo el código Javascript orientado a la administración
	 * debe estar escrito aquí
	*/

	$(document).ready(function(){

		$('.modal').modal();

		$( '.add-new-table' ).on('click', function(e){

			e.preventDefault();
			$( '#add_new_table' ).modal('open');
	
		});

	});

	/**
	 * Funcion para añadir un usuario a la tabla
	 */
	function addUserTable( id, nombres, apellidos, email, imgUrl ){

		var output = `
        <tr data-user='${id}'>
            <td>
                <img class='new_media_img' src='${imgUrl}' alt='${nombres} ${apellidos}'>
            </td>
            <td>${nombres}</td>
            <td>${apellidos}</td>
            <td>${email}</td>
            <td>
                <span data-edit='${id}' class='btn btn-floating waves-effect weves-light'>
                    <i class='tiny material-icons'>mode_edit</i>
                </span>
            </td>
            <td>
                <span data-remove='${id}' class='btn btn-floating waves-effect weves-light red darken-1'>
                    <i class='tiny material-icons'>close</i>
                </span>
            </td>
        </tr>
		`;
		
		$('table tbody').append( output );

	}


	/**Evento click para guardar */
	$(document).ready(function(){

		$( '#crear-tabla' ).on('click', function(e){

			e.preventDefault();

			var nombre = $( '#nombre-tabla' );
			var n = nombre.val();
			var mensaje = $( '#add_new_table #mensaje' );

			if( n != '' ){

				mensaje.html('');
				preload.css( 'display', 'flex' );

				//Envio ajax
				$.ajax({
					url: newdata.url,
					type: 'POST',
					dataType: 'json',
					data: {
						action: 'new_crud_table',
						nonce: newdata.seguridad,
						nombre: n,
						tipo: 'add'
					},
					success: function( data ){

						if( data.result ){

							urledit += data.insert_id;
							setTimeout( function(){

								location.href = urledit;

							}, 1300 );

						}

					}, error: function( d, x, v ){

						// console.log( d );
						// console.log( x );
						// console.log( v );

					}

				});

			}else{

				preload.css( 'display', 'none' );

				if( !nombre.hasClass( 'invalid' ) ){

					nombre.addClass( 'invalid' );
					nombre.after( '<p id="mensaje">Insertar Nombre de la tabla</p>' );
				}

			}
	
		});

	});

	/**
	 * Redireccionando a la p�gina edit
	 */
	$( document ).ready(function(){

		$('table').on( 'click', '[data-new-id-edit]', function(){

			var id = $(this).attr( 'data-new-id-edit' );
			location.href = urledit+id;

		} );

	});

	/**
	 * Consulta ajax con sweetalert para eliminar una tabla
	 */
	$( document ).ready(function(){

		$('table').on( 'click', '[data-new-id-remove]', function(){

			var id = $(this).attr( 'data-new-id-remove' );
			var nombre = $('#dataTable' + id + ' [data-new-name]').attr('data-new-name');

			swal({
				title: "¡Estás seguro?",
				text: "Una vez eliminada la tabla no podras recuperarla",
				icon: "warning",
				buttons: true,
				dangerMode: true,
			  })
			  .then((willDelete) => {
				if (willDelete) {

					$.ajax({
						type: 'post',
						url: newtabdelete.url,
						dataType: 'json',
						data: {
							action : 'ajax_delete_table',
							id : id,
							nombre: nombre,
							nonce: newtabdelete.seguridad,
							tipo : 'delete'
						},
						success: function(data){
	
							if( data.result == 1 ){
		
								$("[data-table='"+ data.id +"' ]").remove();
								
								swal("¡Tu tabla " + data.nombre + " ha sido eliminada!", {
									icon: "success",
								});
		
							}else{
		
								swal("Lo sentimos no se ha podido eliminar tu tabla " + data.nombre + ", se ha producido un error en la consulta sql");
								
							}
						}
							
					})
				 
				} else {

				  swal("La tabla " + nombre + " no ha sido eliminada");
				  
				}

			  });
		

		} )

	});

	/**
	 * Abre modal de p�gina edit
	 */
	$(document).ready(function(){

		$( '.addItem' ).on('click', function(){

			$('#agregar').css('display', 'block');
			$('#actualizar').css('display', 'none');

			$('#addUpdate').modal('open');

			urlimgUser.val('');
			marcoImagen.attr( 'src', '' );
			nombres.val('');
			apellidos.val('');
			email.val('');

			$( '.formularioDataUser label' ).removeClass('active');

		})

	})


	/**
	 * Abre gestor multimedia de wordpress
	 */
	$(document).ready(function(){

		$( '#selectimg' ).on('click', function(e){

			e.preventDefault();

			if( marco ){

				marco.open();
				return;

			}

			marco = wp.media({
				frame: 'select',
				title: 'seleccionar imagen para usuario',
				button: {
					text: 'usar esta imagen'
				},
				multiple: false,
				library: {
					type: 'image',
				}
			});

			marco.on( 'select', function(){

				var imgUser = marco.state().get( 'selection' ).first().toJSON();

				var urlLimpia = limpiar_ruta( imgUser.url );

				urlimgUser.val( urlLimpia );
				marcoImagen.attr( 'src', urlLimpia );

			} );

			marco.open();

		});

	});

	function limpiar_ruta( url ){
		//Servidor local
		var local = /localhost/;

		if( local.test( url ) ){

			var url_pathname 	= location.pathname;
			var	indexPost 		= url_pathname.indexOf( 'wp-admin' );
			var	url_pos 		= url_pathname.substr( 0, indexPost );
			var	url_delete 		= location.protocol + '//' + location.host + url_pos;
			
			return url_pos + url.replace( url_delete, '' );

		}else{
			//Servidor remoto

			var url_real = location.protocol + '//' + location.hostname;
			return url.replace( url_real, '' );
		}

	}

	/**
	 * Funciones para validar los campos
	 */
	$(document).ready(function(){

		$( '#agregar' ).on( 'click', function(){

			var nom 		= $( '#nombres' ),
				ape 		= $( '#apellidos' ),
				e 			= $( '#email' ),
				nombres 	= nom.val(),
				apellidos 	= ape.val(),
				email 		= e.val(),
				imgVal 		= urlimgUser.val();

			var camposInput = $( '.formularioDataUser input' );

			if( validarCamposVacios( camposInput ) ){

				console.log( 'inputs vacios' );

			}else if( validarEmail( email ) == false ){

				e.removeClass('valid');
				e.addClass( 'invalid' );

				if( validarEmail( email ) == true ){

					e.removeClass('invalid');
					e.addClass( 'valid' );
				}

			}else{

				camposInput.removeClass( 'invalid' );
				camposInput.addClass( 'valid' );

				preload.css( 'display', 'flex' );

				//Ajax boton agregar usuario
				$.ajax({
					url: 		newdata.url,
					type: 		'POST',
					dataType: 	'json',
					data: {
						action: 	'ajax_add_users',
						nonce: 		newdata.seguridad,
						tipo: 		'add',
						idTable: idTable,
						nombres: 	nombres,
						apellidos: 	apellidos,
						email: email,
						imgVal: imgVal

					},
					success: function( data ){

						if( data.result ){

							preload.css( 'display', 'none' );
							swal({
								title: 'Agregado',
								text: 'El usuario ' + nombres + ' ha sido agregado correctamente.',
								icon: 'success',
								timer: 4000
							});

							setTimeout( function(){
								$('#addUpdate').modal('close');
								//función para añadir un usuario a la tabla
								addUserTable( data.insert_id, nombres, apellidos, email, imgVal );
							},3000 );

						}else{

							preload.css( 'display', 'none' );
							swal({
								title: 'Error',
								text: 'Hubo un error al guardar los datos, por favor intentalo más tarde',
								icon: 'error',
								timer: 4000
							});

						}

					},
					error: function(){

					}
				});

			}

		} );

	});

	function validarCamposVacios( selector ){

		var inputs = $( selector ),
			result = false;

		$.each( inputs, function( c, v ){

			var input = $( v ),
				inputVal = input.val();

			if( inputVal == '' && input.attr( 'type' ) != 'file' ){

				if( !input.hasClass( 'invalid' ) ){
					input.addClass( 'invalid' );
				}

				result = true;
			}

		} );

		if( result ){
			return true;
			
		}else{
			return false;
		}

	}

	function validarEmail( email ) {

		var expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

		if ( !expr.test(email) ){
			
			return false;

		}else{
			return true;
		}

	}

	/**
	 * Boton editar usuario
	 */
	$(document).ready( function(){

		$('table [data-edit]').on( 'click', function(){

			$('#agregar').css('display', 'none');
			$('#actualizar').css('display', 'block');

			$('#addUpdate').modal('open');

			var item = $(this),
				id = item.attr('data-edit');

			var tr 	= item.parent().parent(),
				td1 = tr.find( $( 'td:nth-child(1) img' ) ),
				td2 = tr.find( $( 'td:nth-child(2)' ) ),
				td3 = tr.find( $( 'td:nth-child(3)' ) ),
				td4 = tr.find( $( 'td:nth-child(4)' ) ),
				src = td1.attr( 'src' );

				$( '.formularioDataUser label' ).addClass('active');
			
				urlimgUser.val( src );
				marcoImagen.attr( 'src', src );
				nombres.val( td2.text() );
				apellidos.val( td3.text() );
				email.val( td4.text() );

			$('#actualizar').attr('data-id', id );
			
			
		} );

	} );

	/**
	 * Metodo ajax actualizar usuario
	 */
	$(document).ready(function(){

		$('#actualizar').on( 'click', function(){

			//Id usuario
			var item = $(this),
				id = item.attr('data-id');

			//Campos de la tabla
			var tr 	= $('table tr[data-user="'+ id +'"]'),
				td1 = tr.find( $( 'td:nth-child(1) img' ) ),
				td2 = tr.find( $( 'td:nth-child(2)' ) ),
				td3 = tr.find( $( 'td:nth-child(3)' ) ),
				td4 = tr.find( $( 'td:nth-child(4)' ) );

			//Datos users
			var nom 		= $( '#nombres' ),
				ape 		= $( '#apellidos' ),
				e 			= $( '#email' ),
				nombres 	= nom.val(),
				apellidos 	= ape.val(),
				email 		= e.val(),
				imgVal 		= urlimgUser.val();

			//Función de validar campos y ajax
			var camposInput = $( '.formularioDataUser input' );

			if( validarCamposVacios( camposInput ) ){

				console.log( 'inputs vacios' );

			}else if( validarEmail( email ) == false ){

				e.removeClass('valid');
				e.addClass( 'invalid' );

				if( validarEmail( email ) == true ){

					e.removeClass('invalid');
					e.addClass( 'valid' );
				}

			}else{

				camposInput.removeClass( 'invalid' );
				camposInput.addClass( 'valid' );

				preload.css( 'display', 'flex' );

				//Ajax boton agregar
				$.ajax({
					url: 		newdata.url,
					type: 		'POST',
					dataType: 	'json',
					data: {
						action: 	'ajax_add_users',
						nonce: 		newdata.seguridad,
						tipo: 		'update',
						idTable: idTable,
						idUser: id,
						nombres: 	nombres,
						apellidos: 	apellidos,
						email: email,
						imgVal: imgVal

					},
					success: function( data ){

						if( data.result ){

							preload.css( 'display', 'none' );
							swal({
								title: 'Actualizado',
								text: 'El usuario ' + nombres + ' ha sido actualizado correctamente.',
								icon: 'success',
								timer: 4000
							});

							console.log(data.result);

							setTimeout( function(){
								$('#addUpdate').modal('close');
								
								tr.addClass('bg-animado');
								td1.attr( 'src', imgVal );
								td2.text( nombres );
								td3.text( apellidos );
								td4.text( email );
								
							},3000 );

							setTimeout( function(){
								
								tr.removeClass('bg-animado');
								
							},1000 );

						}else{

							preload.css( 'display', 'none' );
							swal({
								title: 'Error',
								text: 'Hubo un error al actualizar los datos, por favor intentalo más tarde',
								icon: 'error',
								timer: 4000
							});

						}

					},
					error: function(){

					}
				});

			}


		} );

	});


	/**
	 * Metodo para eliminar usuario
	 */
	$('[data-remove]').on('click', function(){

		var item = $(this),
			id = item.attr('data-remove'),
			tr 	= $('table tr[data-user="'+ id +'"]'),
			nombre = tr.find( $( 'td:nth-child(2)' ) ).text();
			console.log(id);
			console.log(nombre);

		swal({

			title: '¡Estas seguro que quieres eliminar a '+ nombre +'?',
			text: '¡No podrás deshacer esto!',
			type: 'warning',
			icon: "warning",
			buttons: true,
			dangerMode: true,

		})
		.then((willDelete) => {

			if (willDelete) {

				//Ajax boton eliminar
				$.ajax({
					url: 		newdata.url,
					type: 		'POST',
					dataType: 	'json',
					data: {
						action: 	'ajax_add_users',
						nonce: 		newdata.seguridad,
						tipo: 		'delete',
						idTable: idTable,
						idUser: id,

					},
					success: function( data ){

						if( data.result ){

							console.log(data.result);
							console.log(data.json);

							preload.css( 'display', 'none' );
							swal("El usuario "+ nombre +" ha sido eliminado!", {
								icon: "success",
								timer: 4000
							});

							tr.css({
								"background": "red",
								"color" : "white"
							}).fadeOut(1000);

							setTimeout(function(){
								tr.remove();
							},2000)


						}else{

							preload.css( 'display', 'none' );
							swal({
								title: 'Error',
								text: 'Hubo un error al eliminar el usuario, por favo revise su consulta a la base de datos he intentalo más tarde',
								icon: 'error',
								timer: 4000
							});

						}

					},
					error: function(){

					}
				});

			}else{

				swal("El usuario no ha sido eliminado");
			}

		});
	
	})


})( jQuery );


