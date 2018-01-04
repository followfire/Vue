<?php
  require('init.php');
  $sql = "select m_statistics.m_id,m_list.m_image from m_statistics join m_list on m_list.m_id=m_statistics.m_id order by m_statistics.m_stat_count desc limit 5";
//   var_dump($sql);
  $result = mysqli_query($conn,$sql);
  while($row=mysqli_fetch_assoc($result)){
        $output[]=$row;
    }
    echo json_encode($output);
?>