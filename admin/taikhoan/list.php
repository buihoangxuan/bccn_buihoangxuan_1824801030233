<div class="row">
        <div class="row frmtitle mb">
          <h1>DANH SÁCH TÀI KHOẢN</h1>
        </div>
        <div class="row frmcontent">
            <div class="row mb10 frmdsloai">
                <table>
                    <tr>
                        <th></th>
                        <th>MÃ TK</th>
                        <th>USERNAME</th>
                        <th>MẬT KHẨU</th>
                        <th>EMAIL</th>
                        <th>ĐỊA CHỈ</th>
                        <th>ĐIỆN THOẠI</th>
                        <th>VAI TRÒ</th>
                        <th></th>
                    </tr>
                    
                    <?php
                        foreach($listtk as $tk){
                            extract($tk);
                            $suatk='index.php?act=suasp&id='.$id;
                            $xoatk='index.php?act=xoasp&id='.$id;
                            echo '
                            <tr>
                                <td><input type="checkbox" name="" id=""></td>
                                <td>'.$id.'</td>
                                <td>'.$user.'</td>
                                <td>'.$pass.'</td>
                                <td>'.$email.'</td>
                                <td>'.$diachi.'</td>
                                <td>'.$sdt.'</td>
                                <td>'.$role.'</td>
                                <td>
                                <a href="'.$suatk.'"><input type="button" value="Sửa"></a>
                                <a href="'.$xoatk.'"><input type="button" value="Xoá"></a>
                                </td>
                            </tr>
                            ';
                        }
                    ?>
                </table>
            </div>
          <div class="row mb10">
            <input type="button" value="Chọn All" />
            <input type="button" value="Bỏ chọn All" />
            <input type="button" value="Xóa mục đã chọn" />
          </div>
        </div>
      </div>