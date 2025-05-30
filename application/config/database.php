<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$active_group = 'default';
$query_builder = TRUE;

$db['default'] = array(
    'dsn'	=> '',
    'hostname' => 'localhost',
    // Local
    // 'username' => 'root',
    // 'password' => '',
    // 'database' => 'edu_db_cbtaktara_versione',
    
    // // Hosting
    'username' => 'kotapin2_cbt',
    'password' => 'uQ6OL7o1nQ4*e+',
    'database' => 'kotapin2_edu_db_cbtaktara_versione',

    'dbdriver' => 'mysqli',
    'dbprefix' => '',
    'pconnect' => FALSE,
    'db_debug' => (ENVIRONMENT !== 'production'),
    'cache_on' => FALSE,
    'cachedir' => '',
    'char_set' => 'utf8',
    'dbcollat' => 'utf8_general_ci',
    'swap_pre' => '',
    'encrypt' => FALSE,
    'compress' => FALSE,
    'stricton' => FALSE,
    'failover' => array(),
    'save_queries' => TRUE
);
