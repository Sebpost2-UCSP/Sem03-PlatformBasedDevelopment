<?php

include("../conexion.php");

session_start(); //inicia sesion.
$_SESSION['login']=false;

$username = $_POST["username"];
$password = $_POST["password"];

//evaluamos el user y password
$consultaUser="SELECT *
            FROM credentials
            WHERE username='$username'";

$consultaUser=mysqli_query($conexion, $consultaUser); 
$consultaUser=mysqli_fetch_array($consultaUser);

//si el user es correcto, evaluamos el password
if($consultaUser)
{   //compara el password del input con el de la tabla
    if (password_verify($password,$consultaUser['password'])) {
        $_SESSION['login']=true;
        $_SESSION['username']=$consultaUser['username'];
        $_SESSION['password']=$consultaUser['password'];
        $_SESSION['role']=$consultaUser['role'];
        $_SESSION['nombre']=$consultaUser['nombre'];

        header('location: ../pagina.php');
    }

    else{
        echo "Password incorrecto";
        echo"<br><a href='../index.html'>Intentar denuevo</a></div>";

    }
}

//cerrando conexion
mysqli_close($conexion);


?>