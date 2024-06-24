<?php
session_start();
include_once("Koneksi.php");

$sql=mysql_query("SELECT * FROM user WHERE Username='$_POST[user]' and Password='$_POST[pass]'");

$Level=mysql_num_rows($sql);
$r=mysql_fetch_array($sql);

 $_SESSION[Id_User] = $r[Id_User];
 $_SESSION[user] = $r[Username];
 $_SESSION[pass] = $r[Password];
 $_SESSION[leveluser]= $r[Level];

if ($Level > 0 && $r['Level']=='Admin'){
 header('location:Admin/Home.php');
 }
 else if($Level > 0 && $r['Level']=='Outlet'){
 header('location:Outlet/Home.php');
 }
 else if($Level > 0 && $r['Level']=='Pelanggan'){
 header('location:Pelanggan/Home.php');
 }
else{session_destroy();
echo"
<script>alert('Periksa Kembali Username dan Password')</script>
<meta http-equiv=\"REFRESH\" content=\"0;url=Index.html\">
    ";
}

?>