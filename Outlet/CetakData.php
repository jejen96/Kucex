<?php
session_start();
include_once("../Koneksi.php");
require('../pdf/fpdf.php');

//Menampilkan data dari tabel di database
$id = $_SESSION['Id_User'];
$result=mysql_query("SELECT * FROM v_order_user_outlet WHERE Id_Outlet='$id' and Status='Selesai' and (((Waktu_Selesai) BETWEEN '".$_POST['tanggal_awal']."' AND '".$_POST['tanggal_akhir']."'))");

//Inisiasi untuk membuat header kolom
$column_nama = "";
$column_alamat = "";
$column_nomorhp = "";
$column_waktu = "";
$column_total = "";

$total1 = 0;
//For each row, add the field to the corresponding column
while($row = mysql_fetch_array($result))
{
    
	$nama = $row["Nama_Lengkap"];
    $alamat = $row["Alamat_Order"];
    $nomorhp = $row["Nomor_Tlp"];
    $waktu = $row["Waktu_Selesai"];
    $total = $row["Total"];
	
    $al = substr($alamat, 0, 40);
    $nm = substr($nama, 0, 20);
    $tot = 'Rp.'.$total;
    $total1 += $row["Total"];
  
	$column_nama = $column_nama.$nm."\n";
    $column_alamat = $column_alamat.$al."\n";
    $column_nomorhp = $column_nomorhp.$nomorhp."\n";
    $column_waktu = $column_waktu.$waktu."\n";
    $column_total = $column_total.$tot."\n";
    
    
//Create a new PDF file
$pdf = new FPDF('P','mm',array(225,250)); //L For Landscape / P For Portrait
$pdf->AddPage();

//Menambahkan Gambar
$pdf->Image('../img/Logo zonasi kucex3.png',1,1,-175);

$pdf->SetFont('Arial','B',13);
$pdf->Cell(100);
$pdf->Cell(30,10,'Data Transaksi '.$row["Nama_Outlet"],0,0,'C');
$pdf->Ln(5);
$pdf->Cell(100);
$pdf->Cell(30,10,'Zonasi Kucex | www.zonasikucex.com',0,0,'C');
$pdf->Ln();
$pdf->Ln();
$pdf->SetFont('Arial','B',10);
$pdf->Ln(-14);
$pdf->Cell(145);
$pdf->Cell(45,10,"\nPeriode: ".$_POST['tanggal_awal']." s/d ".$_POST['tanggal_akhir']."",0,0,'L');
}
//Fields Name position
$Y_Fields_Name_position = 30;

//First create each Field Name
//Gray color filling each Field Name box
$pdf->SetFillColor(110,180,230);
//Bold Font for Field Name
$pdf->SetFont('Arial','B',10);
$pdf->SetY($Y_Fields_Name_position);

$pdf->SetX(5);
$pdf->Cell(35,8,'Nama Pelanggan',1,0,'C',1);
$pdf->SetX(40);
$pdf->Cell(70,8,'Alamat Order',1,0,'C',1);
$pdf->SetX(110);
$pdf->Cell(27,8,'Nomor Tlp',1,0,'C',1);
$pdf->SetX(137);
$pdf->Cell(50,8,'Tanggal Selesai',1,0,'C',1);
$pdf->SetX(187);
$pdf->Cell(30,8,'Total Harga',1,0,'C',1);
$pdf->Ln();

//Table position, under Fields Name
$Y_Table_Position = 38;

//Now show the columns
$pdf->SetFont('Arial','',10);

$pdf->SetY($Y_Table_Position);
$pdf->SetX(5);
$pdf->MultiCell(35,6,$column_nama,1,'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(40);
$pdf->MultiCell(70,6,$column_alamat,1,'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(110);
$pdf->MultiCell(27,6,$column_nomorhp,1,'C');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(137);
$pdf->MultiCell(50,6,$column_waktu,1,'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(187);
$pdf->MultiCell(30,6,$column_total,1,'L');

$pdf->SetX(187);
$pdf->Cell(30,6,'Rp.'.$total1,1,'L');

$pdf->Output();
?>
