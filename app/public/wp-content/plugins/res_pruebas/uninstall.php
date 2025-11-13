<?php 
if (!defined('WP_UNINSTALL_PLUGIN')) {
    exit();

} 

global $wpdb;
$wpdb->query( "DROP TABLE IF EXIST {$wpdb->prefix}mitabla" );