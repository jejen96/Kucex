<?php 
include_once("../Koneksi.php");

$kode = "Pelanggan";
$Id_Pelanggan = ['Id_User'];
$query = "SELECT max(Id_User) AS last FROM user WHERE Id_User LIKE '$kode%'";
$hasil = mysql_query($query);
$data  = mysql_fetch_array($hasil);
$lastNoTransaksi = $data['last'];
 
// baca nomor urut transaksi dari id transaksi terakhir
$lastNoUrut = substr($lastNoTransaksi, 9, 4);
 
// nomor urut ditambah 1
$nextNoUrut = $lastNoUrut + 1;
 
// membuat format nomor transaksi berikutnya
$nextNoId = $kode.sprintf('%04s', $nextNoUrut);


$Nama = $_POST['Nama'];
$Alamat = $_POST['Alamat'];
$Email = $_POST['Email'];
$Nomor = $_POST['Nomor'];
$Username = $_POST['Username'];
$Password = $_POST['Password'];
$Level = $_POST['Level'];
$Flag = $_POST['Flag'];

$cek_username=mysql_num_rows(mysql_query("SELECT Username FROM user WHERE Username='$_POST[Username]'"));

if ($cek_username > 0){
  echo "<script type='text/javascript'>alert('Username Sudah Ada Yang Pakai. Silahkan dengan username yang lain');
  javascript:history.go(-1);</script>";

}else{

$sql = mysql_query("INSERT INTO user VALUES('$nextNoId','$Nama','$Alamat','$Email','$Nomor','$Username','$Password','$Level', '$Flag')");


if($sql){
echo "<script type='text/javascript'>alert('Data berhasil disimpan. Silahkan Login');</script>
<meta http-equiv=\"REFRESH\" content=\"0;url=../Index.html\">";
}else{
echo "<script type='text/javascript'>alert('Data Gagal disimpan');</script> 
<meta http-equiv=\"REFRESH\" content=\"0;url=Daftar.html\">";
}
}
?>