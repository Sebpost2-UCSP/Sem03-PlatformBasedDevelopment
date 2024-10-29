<?php

include("../conexion.php");

$password = $_POST['password'];
$role = $_POST['role'];
$username = $_POST['username'];
$nombre=$_POST['nombre'];

//Encryptando la password
$encrypt=password_hash($password, PASSWORD_BCRYPT);
//$fotoPerfil="img/$nickname/perfil.jpg";

if ($role=="lider"){
    $role="lider";
}
else{
    $role="contribuidor";
}

//Verificando que no exista el usuario
$consultaUser="SELECT username
            FROM credentials
            WHERE username='$username'";

$consultaUser=mysqli_query($conexion, $consultaUser); 
$consultaUser=mysqli_fetch_array($consultaUser); //guardando en una fila

if (!$consultaUser){//Si la consulta esta vacia aceptamos al usuario
    $sql = "INSERT INTO credentials VALUES ('','$username', '$encrypt' ,'$role','$nombre')";
    $consulta=true;
}

//Ejecutando sql
if ($consulta){
    mysqli_query($conexion, $sql);
    echo "Tu cuenta ha sido creada.";
    echo"<br> <a href='../index.html'>Iniciar Sesion</a>";
}
else{
    echo "Error: el usuario ya existe";
    echo "<a href='../index.html'>Intentar denuevo</a>";
}

//Cerrando conexion
mysqli_close($conexion);
?>