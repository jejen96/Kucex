<?php 
include_once("../Koneksi.php");
$data = $_GET['Id_Outlet'];
$sql = mysql_query("UPDATE outlet SET Flag ='0' Where  Id_Outlet='$data'")or die(mysql_error());

if($sql){
echo "<script type='text/javascript'>alert('Anda Akan Menghapus Data');</script>";
}else{
echo "<script type='text/javascript'>alert('Data Gagal dihapus');</script>";}

include('LihatOutlet.php');
?>