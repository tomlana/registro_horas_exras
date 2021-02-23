<?php 
class DBConnection {


    private $DB_HOST = "127.0.0.1:3303";
    private $DB_USER = "root";
    private $DB_PASSWORD = "";
    private $DB_DATABASE = "youtrack";
    
     
    private function connect() {
        $con = mysqli_connect($this->DB_HOST, $this->DB_USER, $this->DB_PASSWORD) or die("Conexão não realizada" . mysqli_error($con));
        mysqli_select_db($con, $this->DB_DATABASE) or die("Erro ao escolher banco " . mysqli_error($con));
        return $con;
    }
    private function close($con) {
        mysqli_close($con);
    }

    function setSql($sql)
    {
        $con = $this->connect();
        $con->query($sql);
        $this->close($con);
    }

    function login($user, $password)
    {
        $con = $this->connect();
        $sql = "SELECT * FROM usuario_cadastro WHERE usuario = '$user' and senha = '$password'";
        $resultCon = $con->query($sql);
        if (!$resultCon) {
            return false;
        }
        $user = $resultCon->fetch_array(MYSQLI_BOTH);
        if ($user) {
            return $user;
        }else {
            return false;
        }
    }

    function getHorasByIdArray($user,$dti,$dtf)
    {
        $con = $this->connect();
        $sql = "SELECT * FROM cadastro_horas WHERE usuario_id = {$user['usuario_id']}";
        
        if ($dti){
            $sql = $sql . " AND hora_registro >= '$dti 00:00:00' ";
        }
        if ($dtf){
            $sql = $sql . " AND hora_registro <= '$dtf 00:00:00' ";
        }
        $resultCon = $con->query($sql);
        if (!$resultCon) {
            return false;
        }
        $horas = $resultCon;
        if ($horas) {
            return $horas;
        }else {
            return false;
        }
        $data = $resultCon;
        if($data) {
            return $data;
        } else {
            return false;
        }
    }
    
    function getAll($dti, $dtf, $name)
    {
        $con = $this->connect();
        $sql = "SELECT usuario_id, nome, concat(LPAD(FLOOR(TIMESTAMPDIFF(minute,CONCAT(data_inicial, ' ',hora_inicial), CONCAT(data_inicial, ' ',hora_final))/60), 2, '0'), ':',lpad(MOD(TIMESTAMPDIFF(minute,CONCAT(data_inicial, ' ',hora_inicial), CONCAT(data_inicial, ' ',hora_final)), 60), 2, '0')) as horas 
                from usuario_cadastro
                natural join cadastro_horas";
        $clausula = "WHERE";
        if ($dti) {
            $sql .= " $clausula hora_registro >= '$dti 00:00:00' ";
            $clausula = "AND";
        }

        if ($dtf) {
            $sql .= " $clausula hora_registro <= '$dtf 00:00:00' ";
            $clausula = "AND";
        }

        if ($name) {
            $sql .= " $clausula nome = '$name ''";
        }

        $sql .= " order by nome; ";
        
        $resultCon = $con->query($sql);
        if (!$resultCon) {
            return [];
        }
        $arrayHorasUser = [];
        $arrayFinal = [];
        $arrayHoras = $resultCon->fetch_all(MYSQLI_BOTH);

        foreach ($arrayHoras as $key => $value) {
            $arrayHorasUser[$value['usuario_id']][] = $value;
        }

        foreach ($arrayHorasUser as $key => $value) {
            foreach ($value as $chave => $valor) {
                if (!isset($arrayFinal[$valor['usuario_id']])) {
                    $arrayFinal[$valor['usuario_id']] = $valor;
                    $arrayFinal[$valor['usuario_id']]['horas'] = 0;
                }
                $arrayFinal[$valor['usuario_id']]['horas'] += $this->hoursToMinutes($valor['horas']);
            }
        }
        foreach ($arrayFinal as $key => $value) {
            $arrayFinal[$key]['horas'] = $this->minutesToHours($arrayFinal[$key]['horas']);
        }

        return $arrayFinal;

    }

    function getHorasByIdArray_admin($name)
        {

            $con = $this->connect();
            $sql = "SELECT * FROM cadastro_horas";
            $resultCon2 = $con->query($sql);
            if (!$resultCon2){
                return false;
            }
            $horas2 = $resultCon2;
            if ($horas2){
                return $horas2;
            } else {
                return false;
            }
        }

     function extracthours($o){

        $con = $this->connect();
        $sql = "SELECT EXTRACT(HOUR FROM hora_inicial) - EXTRACT(HOUR FROM hora_final) AS DATETIME FROM cadastro_horas WHERE usuario_id = %%";
        $rstCon = $con->query($sql);
        if (!$rstCon){
            return false; 
        }
        $h = $rstCon;
        if ($h){
            return $h;
        } else {
            return false;
        }
     }

     function Colaboradores($name2)
    {
        $con = $this->connect();
        $sql = "SELECT usuario and nome FROM usuario_cadastro";
        $rs = $con->query($sql);
        if (!$rs) {
            return false;
        }
        $colab = $rs;
        if ($colab) {
            return $colab;
        }else {
            return false;
        }
    }


    function hoursToMinutes($hours) 
    { 
        $minutes = 0; 
        if (strpos($hours, ':') !== false) 
        { 
            list($hours, $minutes) = explode(':', $hours); 
        } 
        return $hours * 60 + $minutes; 
    } 
 
    function minutesToHours($minutes) 
    { 
        $hours = (int)($minutes / 60); 
        $minutes -= $hours * 60; 
        return sprintf("%d:%02.0f", $hours, $minutes); 
    }

    
 

}

?>