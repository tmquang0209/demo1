<?php require('../TMQ/function.php'); ?>
<?php require('../TMQ/head.php'); ?>
<div class="c-layout-page">
<?php require('head.php'); ?>
<div class="c-layout-sidebar-content ">
				<!-- BEGIN: PAGE CONTENT -->
				<!-- BEGIN: CONTENT/SHOPS/SHOP-CUSTOMER-DASHBOARD-1 -->
				<div class="c-content-title-1">
					<h3 class="c-font-uppercase c-font-bold">Nạp thẻ tự động</h3>
					<div class="c-line-left"></div>
				</div>


<?php

/**
Bước 1: Gửi Thông tin thẻ cào
						(. Gửi Thông tin thẻ cào .)
Website tích hợp =================================> Napthenhanh.com Server
						(kết quả status và tranid)
                 <=================================  

+,Thành công: {"status":2,"tranid":5422139} 
+,Thất bại : {"status":(Các trạng thái khác status 2),"message":"thẻ cào đã được sử dụng..."}

     
Bước 2: Callback
						 Nếu bước 1 thành công 
Website tích hợp	<================================= Napthenhanh.com server

Hệ thống sẽ trả kết quả cho Website tích hợp thông qua callback mà  Website tích hợp cung cấp cho Napthenhanh.com
+,Thành công: {"sign_callback":mã bí mật,"tranid":5422139,"status":1,"type":VIETTEL,"pin":12345666576575,"serial":4543345666576575,"declare_amount":50000,"amount":50000} 
+,Thất bại: {"sign_callback":mã bí mật,"tranid":5422139,"status":0,"message":"Thẻ cào sai hoặc đã được sử dụng"} 
 
**/

/**
 * API gạch thẻ hệ thống Napthenhanh.com
 * - URL : http://sys.napthenhanh.com/api/charging-wcb
 * - Header: Accept : application/json
 * - Method: POST
 * - Params : 			     
 *       type : VIETTEL, MOBIFONE, VINAPHONE, GATE , ZING , SCOIN , VCOIN  ( vui lòng gửi 1 trong các giá trị, giữ nguyên in hoa)
 *       pin : mã thẻ cào
 *       serial: seri thẻ cào
 *       amount: 10000,20000,30000,50000,100000,200000,300000,500000,1000000
 *       partner_id: mã id website tích hợp được cấp bởi https://napthenhanh.com
 *       sign: md5(partner_id + partner_key + type + pin + serial + amount + request_id) (request_id trường thời gian gửi ko bắt buộc gửi lên);
 
 * - Kết quả :
 *      Thành công : 
 *          - status = 2
 *          - tranid : mã giao dịch nạp thẻ ( sử dụng để so sánh nhận kết quả callback hoặc lấy trạng thái giao dịch nạp thẻ )
 *		Thất bại: 
 *			- status = Các trạng thái khác status = 2
 *			- message = Thẻ đã được sử dụng, Thẻ đã được nạp trước đó !,...
 **/
 
                        

/* * * * * * * * * * *  DEMO CODE * * * * * * * * * * * * * * * * * * * * * * * */

if (isset($_POST['submit'])) {
    if (!isset($_POST['type']) || !isset($_POST['serial']) || !isset($_POST['pin'])) {
        $err = 'Bạn cần nhập đầy đủ thông tin';
    } 
	else {
		$type = $_POST['type'];
		$pin = $_POST['pin'];
		$serial = $_POST['serial'];
		$amount = $_POST['amount'];



        if ($type == '' || $serial == '' || $pin == '' || $amount == '') {
            $err = 'Bạn cần nhập đầy đủ thông tin';
        } else {
            
			
			
			require_once('../napthe/config.php'); //gọi đến file config.php để chèn vào code.
		
            $tranid = time() . rand(10000, 99999);  /// Cái này có thể mà mã order của bạn, nó là duy nhất (enique) để phân biệt giao dịch.

            /// Tạo chữ ký
            $sign = md5($partner_id . $partner_key . $type . $pin . $serial . $amount . $tranid);

            $data = array();
            $data['partner_id'] = $partner_id;
            $data['type'] = $type;
            $data['pin'] = $pin;
            $data['serial'] = $serial;
            $data['amount'] = $amount;
            $data['tranid'] = $tranid;
            $data['sign'] = $sign;

            if (is_array($data)) {
                $dataPost = http_build_query($data);
            } else {
                $dataPost = $data;
            }

            $ch = curl_init();

            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $dataPost);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($ch, CURLOPT_TIMEOUT, 300); //THÊM DÒNG NÀY SẼ TĂNG THỜI GIAN GỬI THẺ ĐƯỢC ỔN ĐỊNH
            $resultRaw = curl_exec($ch);
            curl_close($ch);
            $obj = json_decode($resultRaw);
             
            
         
            try {
                if ($obj && isset($obj->status)) {

                     if ($obj->status == 2  && isset($obj->tranid)) {
                        //Gửi thẻ lên Server Napthenhanh.com  thành công.
						//Thực hiện lưu thông tin thẻ kèm $obj->tranid tại đây.
						// Hệ thống Server Napthenhanh.com sẽ gọi callback lại để trả kết quả thẻ nạp.
                        print_r($obj);                    
                      $db->exec("INSERT INTO `TMQ_napthe` SET 
                `uid` = '".$TMQ["uid"]."',
                `serial` = '$serial',
                `mathe` = '$pin',
                `loaithe` = '$type',
                `menhgia` = '$amount',
                `trangthai` = 'Chờ',
                `date` = '".date("h:i:s d-m-Y")."',
                `tranid` = '".$obj->tranid."'
                ");
                    } else {
						//Gửi thẻ lên Server Napthenhanh.com  thất bại.Thông báo cho khách nạp tại đây 
						 print_r($obj);  
						 $db->exec("INSERT INTO `TMQ_napthe` SET 
                `uid` = '".$TMQ["uid"]."',
                `serial` = '$serial',
                `mathe` = '$pin',
                `loaithe` = '$type',
                `menhgia` = '$amount',
                `trangthai` = '".$obj->status."',
                `date` = '".date("h:i:s d-m-Y")."',
                `tranid` = 'FAIL'
                ");
                    }
					
                } else {
                    /// Lỗi xử lý thẻ
                    echo '<pre>';
                    print_r($obj);
                    echo '</pre>';
                    
                     $db->exec("INSERT INTO `TMQ_napthe` SET 
                `uid` = '".$TMQ["uid"]."',
                `serial` = '$serial',
                `mathe` = '$pin',
                `loaithe` = '$type',
                `menhgia` = '$amount',
                `trangthai` = '".$obj->status."',
                `date` = '".date("h:i:s d-m-Y")."',
                `tranid` = '".$obj->tranid."'
                ");

                }
            } catch (\Exception $e) {
                echo $e->getMessage();
            }

        }
    }
}
?>


 <form method="POST" action="">
                <div class="form-group">
                    <label>Loại thẻ:</label>
                     <select class="form-control" name="type">
                        <option value="">-- Chọn loại thẻ --</option>
                        <option value="VIETTEL">Viettel</option>
                        <option value="MOBIFONE">Mobifone</option>
                        <option value="VINAPHONE">Vinaphone</option>
                        <option value="GATE">Gate</option>
                        <option value="ZING">Zing</option>
                        <option value="SCOIN">Scoin</option>
                        <option value="VCOIN">Vcoin</option>
                        <option value="BIT">BIT</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Mệnh giá:</label>
                   <select class="form-control" name="amount">
                        <option value="">-- Chọn mệnh giá --</option>
                        <option value="10000">10,000đ</option>
                        <option value="20000">20,000đ</option>
                        <option value="30000">30,000đ</option>
                        <option value="50000">50,000đ</option>
                        <option value="100000">100,000đ</option>
                        <option value="200000">200,000đ</option>
                        <option value="300000">300,000đ</option>
                        <option value="500000">500,000đ</option>
                        <option value="1000000">1,000,000đ</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Số seri:</label>
                    <input type="text" class="form-control" name="serial"/>
                </div>
                <div class="form-group">
                    <label>Mã thẻ:</label>
                    <input type="text" class="form-control" name="pin"/>
                </div>
                <div class="form-group">
                    <?php echo (isset($err)) ? '<div class="alert alert-danger" role="alert">' . $err . '</div>' : ''; ?>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-block" name="submit">NẠP NGAY</button>
                </div>
            </form>



	<table class="table cart-table">
			<thead>
                            <tr>
					<th>Trạng thái</th>
					<th>Serial</th>
					<th>Mã thẻ</th>
					<th>Loại thẻ</th>
					<th>Mệnh giá</th>
					<th>Thời gian</th>
					 </tr>
				</thead>
				<tbody>
<?php
$sotin1trang = 20;
if(isset($_GET['page'])){
 $page = intval($_GET['page']);
 }else{
 $page = 1;
 }
 $from = ($page - 1)* $sotin1trang;
if(isset($_POST['timkiem'])){
$get = $db->query("SELECT * FROM `TMQ_napthe` WHERE `uid` = '$uid' $start $end LIMIT $from,$sotin1trang");
}else{
$get = $db->query("SELECT * FROM `TMQ_napthe` WHERE `uid` = '$uid' LIMIT $from,$sotin1trang");
}
foreach($get as $nt){
?>				<tr>
<td><?=$nt['trangthai'];?></td>
<td><?=$nt['serial'];?></td>
<td><?=$nt['mathe'];?></td>
<td><?=$nt['loaithe'];?></td>
<td><?=number_format($nt['menhgia']);?><sup>đ</sup></td>
<td><?=$nt['date'];?></td>
</tr>
<?php } ?>
				</tbody>
				</table>
	<?php 
$tong = $db->query("SELECT * FROM `TMQ_napthe` WHERE `uid` = '$uid'")->rowcount();

if ($tong > $sotin1trang){
echo '<center>' . phantrang('/profile/nap-the-tu-dong.html?', $from, $tong, $sotin1trang) . '</center>';
} ?>

</div>	</div></div></div></div>
<?php require('../TMQ/end.php'); ?>