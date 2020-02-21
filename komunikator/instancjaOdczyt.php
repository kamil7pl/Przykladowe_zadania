<?php
require_once("zapytanieBaza.php");
$sprawdzenie=new zapytanieBaza();
$sprawdzenie->odczytBaza();
echo json_encode($sprawdzenie->rozmowy);
?>