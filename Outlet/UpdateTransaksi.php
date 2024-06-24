<?php 

include_once("../Koneksi.php");

$Id_Order = $_POST['Id_Order'];
$Berat_Pakaian = $_POST['Berat_Pakaian'];

if ($Berat_Pakaian <= '5')
{
	$Ongkir = $Berat_Pakaian * '1500';
	
}
else if ($Berat_Pakaian <=  '10') {
	$Ongkir = $Berat_Pakaian * '1000';
	
}
else if ($Berat_Pakaian <= '20') {
	$Ongkir = $Berat_Pakaian * '500';
	
}
else {
	$Ongkir = $Berat_Pakaian * '300';
	
}

$Harga = $Berat_Pakaian * '7000';

$Total = $Harga + $Ongkir;

$Status = $_POST['Status'];

date_default_timezone_set("Asia/Jakarta");
$WaktuOrder = date("Y-m-d h:i a");
$day = date('D', strtotime($WaktuOrder));
$dayList = array(
	'Sun' => 'Minggu',
	'Mon' => 'Senin',
	'Tue' => 'Selasa',
	'Wed' => 'Rabu',
	'Thu' => 'Kamis',
	'Fri' => 'Jumat',
	'Sat' => 'Sabtu'
);
$tanggal = strtotime("next day");
$WaktuSelesai =  date("Y-m-d h:i a", $tanggal);
$day1 = date('D', strtotime($WaktuSelesai));
$dayList1 = array(
	'Sun' => 'Minggu',
	'Mon' => 'Senin',
	'Tue' => 'Selasa',
	'Wed' => 'Rabu',
	'Thu' => 'Kamis',
	'Fri' => 'Jumat',
	'Sat' => 'Sabtu'
);

$sql = mysql_query("UPDATE v_order_user_outlet SET Berat_Pakaian='$Berat_Pakaian',Harga='$Harga', Waktu_Order='$WaktuOrder $dayList[$day]', Waktu_Selesai='$WaktuSelesai $dayList1[$day1]',Ongkir ='$Ongkir',Total='$Total',Status='$Status' where Id_Order= '$Id_Order'");

if($sql){
echo "<script type='text/javascript'>alert('Berhasil Transaksi');</script>
<meta http-equiv=\"REFRESH\" content=\"0;url=LihatOrder.php\">";
}else{
echo "<script type='text/javascript'>alert('Gagal Transaksi');</script>
<meta http-equiv=\"REFRESH\" content=\"0;url=LihatOrder.php\">";
}
?>