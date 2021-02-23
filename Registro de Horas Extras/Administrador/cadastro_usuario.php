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
  <title>HE - Cadastro de usuário</title>
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
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="home_administrador.php">Retornar</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="login_administrador.php">Sair</a>
        </li>
          </div>
          <div class="d-flex">
            <h5><?=ucwords($_SESSION['user']['nome'])?></h5>
        </div>
        </div>
      </div>
    </nav>

<body>
  <div class="container mt-5">
    <h1>Cadastro</h1>
    <p>Insira os dados do funcionário para realizar o cadastro</p>
    <div>
      <form class="row g-3" method="POST">
        <div class="col-auto">
          <label for="email">Email</label>
          <input type="email" class="form-control" id="email" name="email"  required>
        </div>
        <div class="col-auto">
          <label for="password">Senha</label>
          <input type="password" class="form-control" id="password" name="password"  required>
        </div>  
        <div class="col-auto">
          <label for="nome">Nome</label>
          <input type="nome" class="form-control" id="nome" name="nome" required>
          </div>
          <div class="col-auto">
          <label for="nivel">Nível de acesso</label>
          <input type="nivel" class="form-control" id="nivel" name="nivel" required>
          </div>
        <div>
          <input type="submit" name="btn_novo" value="Cadastrar" class="btn btn-primary">
        </div>
      </form>
    </div>
  </div>

  <?php
    if (isset($_POST['btn_novo']) && isset($_POST['email']) && isset($_POST['password']) && isset($_POST['nome'])) {
      $sql = "INSERT INTO usuario_cadastro (usuario,senha,nome) values ('{$_POST['email']}',{$_POST['password']},'{$_POST['nome']}')";
      $connection->setSql($sql);
      header('Location: ./validacaook.php');

    } 
  ?>
</body>
</html>