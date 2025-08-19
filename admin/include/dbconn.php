<?php

$db = mysqli_connect('localhost','root','','admin_panel');
if(!$db) {
    die("Connection failed: " . mysqli_connect_error());
}