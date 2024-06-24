
<?php
include_once("../Koneksi.php");
$asal   = !empty($_POST['Alamat']) ? urlencode($_POST['Alamat']) : null; 
$querytujuan = mysql_query("SELECT Alamat_Outlet,Id_Outlet FROM outlet WHERE Status='Kosong'");

$i=1;
while($row = mysql_fetch_array($querytujuan)){
	$outlet_id[$i] = $row['Id_Outlet'];
	$tujuannya[$i] = $row['Alamat_Outlet'];
	$tujuan[$i] = urlencode($tujuannya[$i]);
	$urlApi[$i] = "https://maps.googleapis.com/maps/api/distancematrix/json?origins=".$asal."&destinations=".$tujuan[$i]."&key=%20AIzaSyCWpwVwu1hO6TJW1H8x_zlhrLfbSbQ2r3o";
	$result[$i] = file_get_contents($urlApi[$i]);
 
	$data[$i]   = json_decode($result[$i], true);
	
	$jarak[$i] = $data[$i]['rows'][0]['elements'][0]['distance']['text'];

	$Duras[$i] = $data[$i]['rows'][0]['elements'][0]['duration']['text'];


	$jarak[$i] = substr($jarak[$i], 0, -3);
	$i++;
}
$temp = 100;
for($num=1;$num<=sizeof($jarak);$num++){

	if($jarak[$num] < $temp){
		$temp = $jarak[$num];
		$dest = $tujuannya[$num];
		$id_outlet = $outlet_id[$num];
		$Durasi = $Duras[$num];
	} else {
		$temp = $temp;	
	}
	
};

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
$awal = $_POST['Alamat'];
$Status = "Order";
$Berat = "0";
$Harga = "0";
$Id_User = $_POST['Id_User'];

if ($temp > '15'){
    echo "<script type='text/javascript'>alert('Alamat tidak terjangkau atau Alamat tidak Lengkap. Gagal Pesan. Silahkan Cek Kembali');</script>
    <meta http-equiv=\"REFRESH\" content=\"0;url=PesanLaundry.php\">";

}else{

		$inputorder = "INSERT INTO `order`(`Id_Order`,`Alamat_Order`, `Waktu_Order`, `Waktu_Selesai`, `Berat_Pakaian`, `Harga`,`Durasi`, `Jarak`,`Status`, `Id_User`, `Id_Outlet`) VALUES 
		('Id_Order', '$awal', '$WaktuOrder $dayList[$day]','$WaktuSelesai $dayList1[$day1]','$Berat','$Harga','$Durasi','$temp','$Status','$Id_User','$id_outlet')";
		$sql = mysql_query($inputorder);

if ($sql) {
echo "<script type='text/javascript'>alert('Terimakasih. Pemesanan Berhasil');</script>
<meta http-equiv=\"REFRESH\" content=\"0;url=Home.php\">";
}else{
echo "<script type='text/javascript'>alert('Data Gagal disimpan');</script>
<meta http-equiv=\"REFRESH\" content=\"0;url=Home.php\">";
}
}

?>