<?php 

include_once("../Koneksi.php");

$Username = $_POST['Username'];
$Password = $_POST['Password'];


$sql = mysql_query("UPDATE user SET  Password='$Password' WHERE Username='$Username'");

if($sql){
echo "<script type='text/javascript'>alert('Password berhasil dirubah Silahkan Login Kembali');</script>
<meta http-equiv=\"REFRESH\" content=\"0;url=../Index.html\">";;
}else{
echo "<script type='text/javascript'>alert('Data Gagal dirubah');</script>";}


?>