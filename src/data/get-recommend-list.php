<?php
  require('init.php');
  $sql = "select m_id,m_image,m_play,m_name,m_channel from m_list order by m_time desc limit 10";
  $result = mysqli_query($conn,$sql);
  while($row=mysqli_fetch_assoc($result)){
        $output[]=$row;
    }
    echo json_encode($output);
?>