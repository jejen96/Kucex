<?php 

include_once("../Koneksi.php");

$Id_User = $_POST['Id_User'];
$Nama = $_POST['Nama_Lengkap'];
$Alamat = $_POST['Alamat_Lengkap'];
$Email = $_POST['Email_User'];
$Nomor = $_POST['Nomor_Tlp'];
$Username = $_POST['Username'];

$sql = mysql_query("UPDATE user SET Nama_Lengkap='$Nama',Alamat_Lengkap='$Alamat',Email_User ='$Email',Nomor_Tlp='$Nomor', Username='$Username'
 where Id_User = '$Id_User'");

if($sql){
echo "<script type='text/javascript'>alert('Data berhasil dirubah');</script>";
}else{
echo "<script type='text/javascript'>alert('Data Gagal dirubah');</script>";}

include('LihatUser.php');

?>