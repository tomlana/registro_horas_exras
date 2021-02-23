<?php
require_once('connection.php');
$connection = new DBConnection;
session_start();
?>
<!DOCTYPE html>
<body>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <title>HE - Login de Administrador</title>
    </head>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
    <a class="navbar-brand" href="login_administrador.php">HE</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        </ul>
        
    </div>
    </div>
</nav>

    <div class="container">
    <h1>Login de administrador</h1>
    <p>Insira seus dados para entrar</p>
      <div class="row">
        <div class="col-md-12">
          <form class="row g-3" method="POST">
            <div class="col-auto">
              <label for="email" class="visually-hidden">Email</label>
              <input type="text" class="form-control" id="email" name="email" placeholder="Email" required autofocus>
            </div>
            <div class="col-auto">
              <label for="password" class="visually-hidden">Senha</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
            </div>
            <div class="col-auto">
              <button type="submit" name="btn_login" class="btn btn-primary mb-3">Acessar</button> 
            </div>
          </form>
        <div class="col-auto">
            <p>Você é um de nossos colaboradores? Acesse sua área de login, clicando no link abaixo</p>
            <a href="index.php"><button type="submit" name="btn_retorno" class="btn btn-primary mb-3">Visitar</button>
        </div>
        </div>
        </div>
      </div>

      <?php
      if (isset($_POST['btn_login']) && isset($_POST['email']) && isset($_POST['password'])) {
        $user = $connection->login($_POST['email'], $_POST['password']);
        if ($user) {
          $_SESSION['user'] = $user; 
          header('Location: ./home_administrador.php'); 
          
        }else {
          session_destroy();
          echo "<script> alert('Usuário ou senha estão incorretos.Tente novamente.')</script>";
          
        }
      }
        
        
      
    ?>

</body>