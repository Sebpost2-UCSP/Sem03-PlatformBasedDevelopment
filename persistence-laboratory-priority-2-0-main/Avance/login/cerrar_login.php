<?php
session_start();

//eliminar las variables de nuestra sesion
$_SESSION=array();

//cerrar sesion
session_destroy();
header('location: ../index.html');

?>