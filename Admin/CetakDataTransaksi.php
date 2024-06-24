<?php
include_once("../Koneksi.php");
require('../pdf/fpdf.php');

//Menampilkan data dari tabel di database
$result=mysql_query("SELECT * FROM v_order_user_outlet wincache_refresh_if_changed() (((Waktu_Selesai) BETWEEN '".$_POST['tanggal_awal']."' AND '".$_POST['tanggal_akhir']."'))");

//Inisiasi untuk membuat header kolom
$column_nama_o = "";
$column_nama_l = "";
$column_alamat = "";
$column_waktu_o = "";
$column_waktu_s = "";
$column_status = "";


//For each row, add the field to the corresponding column
while($row = mysql_fetch_array($result))
{
    
	$nama_o = $row["Nama_Outlet"];
    $nama_l = $row["Nama_Lengkap"];
    $alamat = $row["Alamat_Order"];
    $waktu_o = $row["Waktu_Order"];
    $waktu_s = $row["Waktu_Selesai"];
    $Status = $row["Status"];

    $nama_o = substr($nama_o, 0, 20 );
    $nama_l = substr($nama_l, 0, 20 );
    $alamat = substr($alamat, 0, 40 );
	
 
    
  
	$column_nama_o = $column_nama_o.$nama_o."\n";
    $column_nama_l = $column_nama_l.$nama_l."\n";
    $column_alamat = $column_alamat.$alamat."\n";
    $column_waktu_o = $column_waktu_o.$waktu_o."\n";
    $column_waktu_s = $column_waktu_s.$waktu_s."\n";
    $column_status = $column_status.$Status."\n";
    
    

//Create a new PDF file
$pdf = new FPDF('P','mm',array(280,297)); //L For Landscape / P For Portrait
$pdf->AddPage();

//Menambahkan Gambar
$pdf->Image('../img/Logo zonasi kucex3.png',1,1,-175);

$pdf->SetFont('Arial','B',13);
$pdf->Cell(110);
$pdf->Cell(45,10,'Data Transaksi ',0,0,'C');
$pdf->Ln(5);
$pdf->Cell(110);
$pdf->Cell(45,10,'Zonasi Kucex | www.zonasikucex.com',0,0,'C');
$pdf->Ln();
$pdf->Ln();
$pdf->SetFont('Arial','B',10);
$pdf->Ln(-14);
$pdf->Cell(180);
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
$pdf->Cell(40,8,'Nama Outlet',1,0,'C',1);
$pdf->SetX(45);
$pdf->Cell(40,8,'Nama Pelanggan',1,0,'C',1);
$pdf->SetX(85);
$pdf->Cell(70,8,'Alamat Order',1,0,'C',1);
$pdf->SetX(155);
$pdf->Cell(50,8,'Tanggal Order',1,0,'C',1);
$pdf->SetX(205);
$pdf->Cell(50,8,'Tanggal Selesai',1,0,'C',1);
$pdf->SetX(255);
$pdf->Cell(20,8,'Status',1,0,'C',1);
$pdf->Ln();

//Table position, under Fields Name
$Y_Table_Position = 38;

//Now show the columns
$pdf->SetFont('Arial','',10);

$pdf->SetY($Y_Table_Position);
$pdf->SetX(5);
$pdf->MultiCell(40,6,$column_nama_o,1,'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(45);
$pdf->MultiCell(40,6,$column_nama_l,1,'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(85);
$pdf->MultiCell(70,6,$column_alamat,1,'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(155);
$pdf->MultiCell(50,6,$column_waktu_o,1,'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(205);
$pdf->MultiCell(50,6,$column_waktu_s,1,'L');

$pdf->SetY($Y_Table_Position);
$pdf->SetX(255);
$pdf->MultiCell(20,6,$column_status,1,'C');


$pdf->Output();
?>
