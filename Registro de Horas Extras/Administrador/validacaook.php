<?php
session_start();
require_once('connection.php');
$connection = new DBConnection;


?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HE - Cadastro realizado!</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>  <title>Cadastro de novos usuários</title>
</head>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="cadastro_usuario.php">HE</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        </li>
        <li class="nav-item">
              <a class="nav-link" aria-current="page" href="home_administrador.php">Retornar</a>
            </li>
          </div>
          <div class="d-flex">
            <h5><?=ucwords($_SESSION['user'][3])?></h5>
        </div>
        </div>
        </div>
      </div>
    </nav>

<body>
  <div class="container mt-2">
    <div>
        <div class="alert alert-sucess">
            <div class="alert alert-sucess col-md-3"> 
                <div class="alert alert-info alert-dismissible" role="alert">Cadastrado!</div>
                <a href="index.php"><input type="submit" name="btn_l1" value="Login" class="btn btn-primary">
            </div>
        </div>
    </div>
        <div>
       
        </div>
      </form>
    </div>
  </div>