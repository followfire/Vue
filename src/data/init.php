<?php
 header("Content-Type:application/json;charset=utf-8");
 header('Access-Control-Allow-Origin:*');
 header('Access-Control-Allow-Method:POST,GET');
 $conn=mysqli_connect("127.0.0.1","root","","music");
 mysqli_query($conn,"set names utf8");
 $output=[];
?>