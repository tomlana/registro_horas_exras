<?php
session_start();
require_once('connection.php');
$connection = new DBConnection;
$dti= isset($_POST['data_inicial']) ?$_POST['data_inicial']:'';
$dtf= isset($_POST['data_final']) ?$_POST['data_final']:'';
$horas = $connection->getHorasByIdArray($_SESSION['user'],$dti,$dtf);


?>
<!DOCTYPE html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <title>HE - Consulta de horas extras</title>
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
              <a class="nav-link" aria-current="page" href="cadastro_hora_extra.php">Registrar hora extra</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="horas_extras.php">Consultar Horas</a>
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

    <h1> Horas Extras </h1>

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
      <div class="container-fluid">
      
        <button type="submit" class="btn btn-primary" name="btn_buscar" value="Buscar hora extra"> Buscar </button>
        
      </div>
      <div>
      </div>
    </form>   
      </div>
    </div>

    <table class="table table-hover">
        <thead class="table-dark">
            <tr>
                <td>Número</td>
                <td>Motivo</td>
                <td>Início</td>
                <td>Data</td>
                <td>Fim</td>
                <td>Registro</td>
                <td>Horas</td>
            </tr>
        </thead>
        <tbody>
        <?php
       

      
            $total = 0;

        

        while ($hora = $horas->fetch_array()) {

            $hi = date_create($hora['hora_inicial']);
            $hf = date_create($hora['hora_final']);
            $diff=date_diff($hi,$hf);
            $hours=$diff->format("%h:%I");
            $ht = $connection->hoursToMinutes($hours);
            $total  = $total+$ht;

        ?>
            <tr>
                <td><?=$hora['horas_id']?></td>
                <td><?=$hora['motivo']?></td>
                <td><?=date('H:i', strtotime($hora['hora_inicial']))?></td>
                <td><?=date('d/m/Y', strtotime($hora['data_inicial']))?></td>
                <td><?=date('H:i', strtotime($hora['hora_final']))?></td>
                <td><?=date('d/m/Y', strtotime($hora['hora_registro']))?></td> 
                <td><?=$diff->format("%h:%I hora(s)")?></td>
            </tr>
        </tbody>
        <?php
        }
        ?>
        <tr>
        <td colspan="5"></td>
        <td>Total :</td>
        <td><?=$connection->minutesToHours($total)?> hora(s)</td>
        </tr>
        
    </table>
    
    </div>
    


    
</body>