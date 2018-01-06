<?php
 header("Content-Type:application/json;charset=utf-8");
 header('Access-Control-Allow-Origin:*');
 header('Access-Control-Allow-Method:POST,GET');
 $conn=mysqli_connect("qdm14634399.my3w.com","qdm14634399","aimiao1314","qdm14634399_db");
 mysqli_query($conn,"set names utf8");
 $output=[];
?>