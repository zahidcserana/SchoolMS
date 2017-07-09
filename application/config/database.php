<?php  if ( !defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------
| DATABASE CONNECTIVITY SETTINGS
| -------------------------------------------------------------------
| This file will contain the settings needed to access your database.
|
| For complete instructions please consult the 'Database Connection'
| page of the User Guide.
|
*/

$active_group = 'default';
$active_record = TRUE;

$db['default']['hostname'] = 'localhost';
$db['default']['username'] = 'root';
$db['default']['password'] = '';
$db['default']['database'] = 'school_db_2';
$db['default']['dbdriver'] = 'mysqli';
$db['default']['dbprefix'] = '';
$db['default']['pconnect'] = TRUE;
$db['default']['db_debug'] = TRUE;
$db['default']['cache_on'] = FALSE;
$db['default']['cachedir'] = '';
$db['default']['char_set'] = 'utf8';
$db['default']['dbcollat'] = 'utf8_general_ci';
$db['default']['swap_pre'] = '';
$db['default']['autoinit'] = TRUE;
$db['default']['stricton'] = FALSE;

$db['mssqldb']['hostname'] = 'sms_dsn';
$db['mssqldb']['username'] = '';
$db['mssqldb']['password'] = '';
$db['mssqldb']['database'] = 'school_ms_db';
$db['mssqldb']['dbdriver'] = 'odbc';
$db['mssqldb']['dbprefix'] = '';
$db['mssqldb']['pconnect'] = TRUE;
$db['mssqldb']['db_debug'] = TRUE;
$db['mssqldb']['cache_on'] = FALSE;
$db['mssqldb']['cachedir'] = '';
$db['mssqldb']['char_set'] = 'utf8';
$db['mssqldb']['dbcollat'] = 'utf8_general_ci';
$db['mssqldb']['swap_pre'] = '';
$db['mssqldb']['autoinit'] = TRUE;
$db['mssqldb']['stricton'] = FALSE;


/* End of file database.php */
/* Location: ./application/config/database.php */


/*$db['default']['hostname'] = 'ftp.mysoftheaven.com';
$db['default']['username'] = 'mysoft_nhs';
$db['default']['password'] = 'nhs@2017';
$db['default']['database'] = 'mysoft_nhs';*/

/*
$db['default']['hostname'] = '178.238.239.53';
$db['default']['username'] = 'admin_nalta';
$db['default']['password'] = 'BtJBuN3Hi1';
$db['default']['database'] = 'admin_nalta';*/