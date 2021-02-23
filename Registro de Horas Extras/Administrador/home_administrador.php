<?php
session_start();
require_once('connection.php');
$connection = new DBConnection;
$horas2 = $connection->getHorasByIdArray_admin($_SESSION['user']);

?>
<!DOCTYPE html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>HE - Home (Administrador)</title>
</head>
<body>
<div class="container">
<!-- Menu Inicio -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
    <a class="navbar-brand" href="home.php">HE</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="home_administrador.php">Inicio</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="cadastro_usuario.php">Cadastrar novo colaborador</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="horas_extras_admin.php">Horas extras</a>
        </li>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="index.php">Sair</a>
        </li>
        
        </ul>
        <div class="d-flex">
            <h5><?=ucwords($_SESSION['user'][3])?></h5>
        </div>
    </div>
    </div>
</nav>
<!-- Menu Fim -->
<h1> Pagina Inicial </h1>


</body>
</html>