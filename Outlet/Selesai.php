
<?php 
include_once("../Koneksi.php");

$data = $_GET['Id_Order'];
date_default_timezone_set("Asia/Jakarta");
$Waktu = date("Y-m-d h:i a");
$day = date('D', strtotime($Waktu));
$dayList = array(
	'Sun' => 'Minggu',
	'Mon' => 'Senin',
	'Tue' => 'Selasa',
	'Wed' => 'Rabu',
	'Thu' => 'Kamis',
	'Fri' => 'Jumat',
	'Sat' => 'Sabtu'
);

$sql = mysql_query("UPDATE v_order_user_outlet SET Status='Selesai', Waktu_selesai='$Waktu $dayList[$day]'  where Id_Order='$data'");

if($sql){
echo "<script type='text/javascript'>alert('Transaksi Selesai');</script>
<meta http-equiv=\"REFRESH\" content=\"0;url=LihatAntar.php\">";
}else{
echo "<script type='text/javascript'>alert('Transaksi Gagal');</script>
<meta http-equiv=\"REFRESH\" content=\"0;url=DataTransaksi.php\">";
}

?>