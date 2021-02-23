<?php
session_start();
require_once('connection.php');
$connection = new DBConnection;
$dti= isset($_POST['data_inicial']) ?$_POST['data_inicial']:'';
$dtf= isset($_POST['data_final']) ?$_POST['data_final']:'';
$name = isset($_POST['nome']) ?$_POST['nome']:'';
$horas = $connection->getAll($dti, $dtf,$name);




?>
<!DOCTYPE html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <title>HE - Horas extras de colaboradores</title>
    </head>
    <body>
    <div class="container">
    <!-- Menu Inicio -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="home_administrador.php">HE</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="home_administrador.php">Inicio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="horas_extras_admin.php">Horas extras dos colaboradores</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" aria-current="page" href="cadastro_usuario.php">Cadastrar novo colaborador</a>
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

    <h1>Horas extras</h1>

    <div class="container">
      <div>
      <p>Consulta de horas extras por data</p>
        <form class="row g-3" method="POST">
      <div class="col-auto">
        <label for="datainicial" class="form-label">Data Inicial</label>
        <input type="date" class="form-control" id="data_inicial" name="data_inicial" required>
      </div>
      <div class="col-auto">
        <label for="datafinal" class="form-label">Data Final</label>
        <input type="date" class="form-control" id="data_final" name="data_final">
      </div>
      <div class="col-auto">
        <label for="nome" class="form-label">Nome do Colaborador</label>
        <input type="text" class="form-control" id="nome" name="nome">
      </div>
      <form class="row g-3" method="POST">
        <div class="row align-items-center">
      <div class="col">
        <div class="col">
        <input class="form-check-input" type="checkbox" value="colab-all" id="flexCheckDefault" >
            <label class="form-check-label" for="flexCheckDefault">
              Todos os colaboradores
            </label>
        </div>
        <div class="col">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="colab-esp" id="flexCheckChecked">
            <label class="form-check-label" for="flexCheckChecked">
              Especifíco
            </label>
        </div>
      <div class="col-lg-12" style="text-align: right;">
        <button type="submit" class="btn btn-primary" name="btn_buscar" value="Buscar hora extra"> Buscar </button>
      </div>
      </div>
    
    <p>Listagem de horas extras por colaborador</p>
    <table class="table table-hover">
        <thead class="table-dark">
            <tr>
                <td>Id</td>
                <td>Nome</td>
                <td>Total</td>
            </tr>
        </thead>
        <tbody>
        <?php
       

      
            $total = 0;

        

        foreach ($horas as $key => $hora) {
        ?>
            <tr>
                <td><?=$hora['usuario_id']?></td>
                <td><?=utf8_encode($hora['nome'])?></td>
                <td><?=date('H:i', strtotime($hora['horas']))?> hora(s)</td>
            </tr>
        </tbody>
        <?php
        }
        ?>
        
    </table>
    
    </div>
    

    
</body>