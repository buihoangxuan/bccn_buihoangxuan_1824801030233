<div class="row">
        <div class="row frmtitle mb">
          <h1>THỐNG KÊ</h1>
        </div>
        <div class="row frmcontent">
            <div class="row mb10 frmdsloai">
                <table>
                    <tr>
                        <th>STT</th>
                        <th>LOẠI HÀNG</th>
                        <th>SỐ LƯỢNG</th>
                        <th>GIÁ CAO NHẤT</th>
                        <th>GIÁ THẤP NHẤT</th>
                        <th>GIÁ TRUNG BÌNH</th>
                    </tr>
                    
                    <?php
                        foreach($dstk as $tk){
                            extract($tk);
                            echo '
                            <tr>
                                <td>'.$id.'</td>
                                <td>'.$name.'</td>
                                <td>'.$countsp.'</td>
                                <td>'.$maxgia.'</td>
                                <td>'.$mingia.'</td>
                                <td>'.$avg.'</td>
                            </tr>
                            ';
                        }
                    ?>
                </table>
            </div>
          <div class="row mb10">
            <input type="button" value="Xem biểu đồ" />
          </div>
          <div class="row mb10">
               <?php
                    include "bieudo.php";
               ?>             
          </div>
          
        </div>
      </div>