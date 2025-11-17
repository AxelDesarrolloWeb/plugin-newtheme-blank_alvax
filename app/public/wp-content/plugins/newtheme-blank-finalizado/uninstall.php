<?php
/**
 * Se activa cuando el plugin va a ser desinstalado
 *
 * @link       http://misitioweb.com
 * @since      1.0.0
 *
 * @package    newtheme_blank
 */

if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

/*
 * Agregar todo el codigo necesario
 * para eliminar ( como las bases de datos, limpiar cache,
 * limpiar enlaces permanentes, etc. ) en la desinstalacion
 * del plugin
 */

global $wpdb;

$sql = "DROP TABLE IF EXISTS {$wpdb->prefix}newtheme_data";

$wpdb->query( $sql );