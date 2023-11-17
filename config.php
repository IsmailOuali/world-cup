<?php

$server = 'localhost';
$user = 'root';
$pass = '';
$db = 'worldcup';


$conn = mysqli_connect($server,$user,$pass,$db);
if(!$conn){
    echo 'makhdamaach';
}