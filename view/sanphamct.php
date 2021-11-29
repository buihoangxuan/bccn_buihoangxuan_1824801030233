<div class="row mb">
  <div class="boxtrai mr">
    <div class="row mb">
      <?php
        extract($spct);
      ?>
      <div class="boxtitle"><?=$name?></div>
      <div class="row boxcontent">
        <?php
          $hinh=$img_path.$img;
          echo '<div class="row mb ctsp">
                  <img src="'.$hinh.'" alt="">
                </div>';
          echo $mota;
        ?>
      </div>

    </div>
    <div class="row mb">
      <div class="boxtitle">BÌNH LUẬN</div>
      <div class="row boxcontent"></div>
    </div>
    <div class="row mb">
      <div class="boxtitle">SẢN PHẨM CÙNG LOẠI</div>
      <div class="row boxcontent">
        <?php
          foreach($spcungloai as $sp){
            extract($sp);
            $lin="index.php?act=sanphamct&idsp=".$id;
            echo '<li><a href="'.$lin.'">'.$name.'</a></li>';
          }
        ?>
        
      </div>
    </div>
  </div>
  <div class="boxphai">
    <?php       
      include "boxphai.php";
    ?>
  </div>
</div>
