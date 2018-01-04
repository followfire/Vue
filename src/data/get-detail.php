<?php
  require('init.php');
  @$m_id = $_REQUEST['m_id'] or die('{msg":"无效的音频id","code":-1}');
  $sql = "select m_user.*,m_list.m_url,m_list.m_image,m_list.m_play,m_list.m_like,m_name from m_user join m_list on m_list.m_id=$m_id and m_user.u_id=m_list.uid";
  $result = mysqli_query($conn,$sql);
  while($row=mysqli_fetch_assoc($result)){
        $output["msg"]=$row;
        $output["code"]=1;
    }
  echo json_encode($output);
  $sql = "INSERT INTO m_statistics (m_id,m_stat_count) VALUES ($m_id,1) ON DUPLICATE KEY UPDATE m_stat_count=m_stat_count+1";  
  $result = mysqli_query($conn,$sql);
?>