<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cadastrophp";


$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar a conexão
if ($conn->connect_error) {
    		die("Conexão falhou: " . $conn->connect_error);
}

// Capturar dados do formulário
$nome = $_POST['nome'];
$email = $_POST['email'];
$cpf = $_POST['cpf'];

      $sql = "INSERT INTO cliente (nome, email, cpf) VALUES ('$nome', '$email', $cpf)";



if ($conn->query($sql) === TRUE) {
    		echo "Registro inserido com sucesso!";
} else {
    		echo "Erro ao inserir registro: " . $conn->error;
}

$conn->close();

header("Location: ../index.html");
exit();
?>
