<?php
$host = "localhost";
$port = 3306;
$socket = "";
$user = "root";
$password = "admin";
$dbname = "projekty";
@$connect = new mysqli($host, $user, $password, $dbname, $port, $socket);
if($connect->connect_errno != false)
{
   exit("Error: ".$connect->connect_errno);
}
$connect->query("SET NAMES 'utf8'");
?>