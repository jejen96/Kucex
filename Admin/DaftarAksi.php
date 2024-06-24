<?php 

include_once("../Koneksi.php");


$kode = "Outlet";
$Id_Outlet = ['Id_Outlet'];
$query = "SELECT max(Id_Outlet) AS last FROM outlet WHERE Id_Outlet LIKE '$kode%'";
$hasil = mysql_query($query);
$data  = mysql_fetch_array($hasil);
$lastNoTransaksi = $data['last'];
 
// baca nomor urut transaksi dari id transaksi terakhir
$lastNoUrut = substr($lastNoTransaksi, 9, 4);
 
// nomor urut ditambah 1
$nextNoUrut = $lastNoUrut + 1;
 
// membuat format nomor transaksi berikutnya
$nextNo = $kode.sprintf('%04s', $nextNoUrut);

$Nama_Outlet = $_POST['Nama_Outlet'];
$Alamat_Outlet = $_POST['Alamat_Outlet'];
$Email_Outlet = $_POST['Email_Outlet'];
$Nomor = $_POST['Nomor'];
$Username = $_POST['Username'];
$Password = $_POST['Password'];
$Level = $_POST['Level'];
$Flag = $_POST['Flag'];
$Lat = $_POST['Lat'];
$Long = $_POST['Long'];
$Status = $_POST['Status'];

$sql = mysql_query("INSERT INTO outlet VALUES('$nextNo','$Nama_Outlet','$Alamat_Outlet','$Email_Outlet','$Nomor','$Flag','$nextNo','$Lat','$Long','$Status')");
$sql1 = mysql_query("INSERT INTO user VALUES('$nextNo','$Nama_Outlet','$Alamat_Outlet','$Email_Outlet','$Nomor','$Username','$Password','$Level','$Flag')");


if($sql.$sql1){
echo "<script type='text/javascript'>alert('Data berhasil disimpan');</script> <meta http-equiv=\"REFRESH\" content=\"0;url=LihatOutlet.php\">";
}else{
echo "<script type='text/javascript'>alert('Data Gagal disimpan');</script>";}

include('DaftarOutlet.php');

?>