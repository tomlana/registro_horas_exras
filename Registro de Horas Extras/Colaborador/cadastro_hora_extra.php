<?php
session_start();
require_once('connection.php');
$connection = new DBConnection;
?>
<!DOCTYPE html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <title>HE - Registro de horas extras</title>
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
              <a class="nav-link" aria-current="page" href="home.php">Inicio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="cadastro_hora_extra.php">Registrar hora extra</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="horas_extras.php">Consultar Horas</a>
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

    <h1> Novo registro </h1>
    <p>Preencha os dados abaixo corretamente</p>
   <form class="row g-3" method="POST">
  
      <div class="mb-3">
        <label for="motivo_hora_extra" class="form-label">Motivo</label>
        <textarea class="form-control" id="motivo_hora_extra" name="motivo_hora_extra" rows="3" required></textarea>
    </div>
    <div class="col-auto">
        <label for="inputPassword" class="form-label">Hora Inicial</label>
        <input type="time" class="form-control" id="hora_inicial" name="hora_inicial" placeholder="Data" required>
      </div>
      <div class="col-auto">
        <label for="inputPassword" class="form-label">Data</label>
        <input type="date" class="form-control" id="data_inicial" name="data_inicial" placeholder="Data" required>
      </div>
      <div class="col-auto">
        <label for="inputPassword" class="form-label">Hora Final</label>
        <input type="time" class="form-control" id="hora_final" name="hora_final" placeholder="Data" required>
      </div>

      <div>
        <button type="submit" class="btn btn-primary" name="btn_cadastrar" value="Registrar"> Registrar </button>
      </div>
    </form>
    
    </div>
    
    <?php 
      if (isset($_POST['btn_cadastrar']) && isset($_POST['motivo_hora_extra']) && isset($_POST['hora_inicial']) && isset($_POST['data_inicial']) && isset($_POST['hora_final'])) {
        
        $motivo = $_POST['motivo_hora_extra'];
        $hora_inicial = $_POST['hora_inicial'];
        $data_inicial = $_POST['data_inicial'];
        $hora_final = $_POST['hora_final'];
        $sql = "INSERT INTO cadastro_horas (motivo,hora_inicial,data_inicial,hora_final,hora_registro, usuario_id) values ('$motivo','$hora_inicial','$data_inicial','$hora_final',CURRENT_DATE, {$_SESSION['user'][0]})";
        $connection->setSql($sql);  
        header('Location: ./horaok.php');
      }
    
    ?>
    
</body>