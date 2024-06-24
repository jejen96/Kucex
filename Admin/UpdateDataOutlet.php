<?php 

include_once("../Koneksi.php");

$Id_Outlet = $_POST['Id_Outlet'];
$Nama_Outlet = $_POST['Nama_Outlet'];
$Alamat_Outlet = $_POST['Alamat_Outlet'];
$Nomor_Tlp = $_POST['Nomor_Tlp'];
$Email_Outlet = $_POST['Email_Outlet'];
$Lat = $_POST['Lat'];
$Long = $_POST['Long'];

$sql = mysql_query("UPDATE outlet SET Nama_Outlet='$Nama_Outlet',Alamat_Outlet='$Alamat_Outlet', Nomor_Tlp_Outlet='$Nomor_Tlp',
 Email_Outlet='$Email_Outlet', Lat='$Lat', Longt='$Long' WHERE Id_Outlet='$Id_Outlet'")or die(mysql_error());

if($sql){
echo "<script type='text/javascript'>alert('Data berhasil dirubah');</script>";
}else{
echo "<script type='text/javascript'>alert('Data Gagal dirubah');</script>";}

include('LihatOutlet.php');

?>