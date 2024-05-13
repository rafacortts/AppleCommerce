<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cadastrophp";


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    		die("Conexão falhou: " . $conn->connect_error);
}

$nome = $_POST['nome'];
$email = $_POST['email'];
$idade = $_POST['cpf'];


      $sql = "INSERT INTO cliente (nome, email, cpf) VALUES ('$nome', '$email', $cpf)";

ECHO "INTEGRACAO DO PHP + HTML COM O MYSQL <BR>";
ECHO "PROFESSOR EDIBERTO MARIANO <BR>";
ECHO "CADASTRO DE REGISTRO NA TABELA CLIENTE <BR><BR>";

if ($conn->query($sql) === TRUE) {
    		echo "Registro inserido com sucesso!";
} else {
    		echo "Erro ao inserir registro: " . $conn->error;
}
// Fechar conexão
$conn->close();
?>