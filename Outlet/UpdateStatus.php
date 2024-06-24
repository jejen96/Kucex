<?php 
session_start();
$id = $_SESSION['Id_User'];
include_once("../Koneksi.php");

$Status = $_POST['Status'];


$sql = mysql_query("UPDATE outlet SET  Status='$Status' WHERE Id_Outlet='$id'");

if($sql){
echo "<script type='text/javascript'>alert('Status Berhasil Dirubah');</script>
<meta http-equiv=\"REFRESH\" content=\"0;url=Status.php\">";;
}else{
echo "<script type='text/javascript'>alert('Data Gagal dirubah');</script>";}


?>