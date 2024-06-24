<?php 

include_once("../Koneksi.php");

$Id_User = $_POST['Id_User'];
$Nama = $_POST['Nama_Lengkap'];
$Alamat = $_POST['Alamat_Lengkap'];
$Nomor = $_POST['Nomor_Tlp'];
$Username = $_POST['Username'];


$sql = mysql_query("UPDATE user SET Nama_Lengkap='$Nama',Alamat_Lengkap='$Alamat',Nomor_Tlp='$Nomor',Username='$Username' where Id_User = '$Id_User'");

if($sql){
echo "<script type='text/javascript'>alert('Data berhasil dirubah');</script>
<meta http-equiv=\"REFRESH\" content=\"0;url=Home.php\">";
}else{
echo "<script type='text/javascript'>alert('Data Gagal dirubah');</script>
<meta http-equiv=\"REFRESH\" content=\"0;url=EditAkun.php\">";
}


?>