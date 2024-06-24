<?php
include_once("../Koneksi.php");
require('../pdf/fpdf.php');
//Menampilkan data dari tabel di database
$ord = $_GET['Id_Order'];
$result=mysql_query("SELECT * FROM v_order_user_outlet WHERE Id_Order='$ord'") or die(mysql_error());

//Inisiasi untuk membuat header kolom
$column_nama_pelanggan = "";
$column_alamat_order = "";
$column_nomor_pelanggan = "";
$column_berat_pakaian = "";
$column_harga = "";
$column_ongkir = "";
$column_total = "";
$column_nama_outlet = "";
$column_alamat_outlet = "";
$column_nomor_outlet = "";


while($row = mysql_fetch_array($result))
{
	$nama_pelanggan = $row["Nama_Lengkap"];
    $alamat_order = $row["Alamat_Order"];
    $nomor_pelanggan = $row["Nomor_Tlp"];
    $berat_pakaian = $row["Berat_Pakaian"];
    $harga = $row["Harga"];
    $ongkir = $row["Ongkir"];
    $total = $row["Total"];
    $nama_outlet = $row["Nama_Outlet"];
    $alamat_outlet = $row["Alamat_Outlet"];
	$nomor_outlet = $row["Nomor_Tlp_Outlet"];

    $alou = substr($alamat_outlet, 0,  50);
    $alor = substr($alamat_order, 0, 50);


	$column_1 = $column_nama_pelanggan.$nama_pelanggan;
    $column_2 = $column_alamat_order.$alor."\n";
    $column_3 = $column_nomor_pelanggan.$nomor_pelanggan."\n";
    $column_4 = $column_berat_pakaian.$berat_pakaian."\n";
    $column_5 = $column_harga.$harga."\n";
    $column_6 = $column_ongkir.$ongkir."\n";
    $column_7 = $column_total.$total."\n";
    $column_8 = $column_nama_outlet.$nama_outlet."\n";
    $column_9 = $column_alamat_outlet.$alou."\n";
    $column_10 = $column_nomor_outlet.$nomor_outlet."\n";
    

//Create a new PDF file
$pdf = new FPDF('P','mm',array(130,200)); //L For Landscape / P For Portrait
$pdf->AddPage();

//Menambahkan Gambar
$pdf->Image('../img/Logo Zonasi Kucex.png',10,15,-175);

$pdf->SetFont('Arial','B',12);
$pdf->Cell(60);
$pdf->Cell(10,10,'Transaksi '.$row["Nama_Outlet"],0,0,'C');
$pdf->Ln(5);
$pdf->Cell(60);
$pdf->Cell(10,10,'Zonasi Kucex | www.zonasikucex.com',0,0,'C');
$pdf->Ln();


}

$pdf->SetFont('times','',10);
$pdf->Cell(-5);
$pdf->Cell(5,10,'Nama Pelanggan',0,0,'L');
$pdf->Cell(40);
$pdf->Cell(1,10,':',0,0,'L');
$pdf->Cell(1);
$pdf->Cell(5,10,$column_1,0,0,'L');
$pdf->Ln(5);

$pdf->SetFont('times','',10);
$pdf->Cell(-5);
$pdf->Cell(5,10,'Alamat Order',0,0,'L');
$pdf->Cell(40);
$pdf->Cell(1,10,':',0,0,'L');
$pdf->Cell(1);
$pdf->Cell(5,10,$column_2,0,0,'L');
$pdf->Ln(5);

$pdf->SetFont('times','',10);
$pdf->Cell(-5);
$pdf->Cell(5,10,'Nomor Tlp Pelanggan',0,0,'L');
$pdf->Cell(40);
$pdf->Cell(1,10,':',0,0,'L');
$pdf->Cell(1);
$pdf->Cell(5,10,$column_3,0,0,'L');
$pdf->Ln(5);

$pdf->SetFont('times','',10);
$pdf->Cell(-5);
$pdf->Cell(5,10,'Berat Pakaian',0,0,'L');
$pdf->Cell(40);
$pdf->Cell(1,10,':',0,0,'L');
$pdf->Cell(1);
$pdf->Cell(5,10,$column_4,0,0,'L');
$pdf->Ln(5);

$pdf->SetFont('times','',10);
$pdf->Cell(-5);
$pdf->Cell(5,10,'Harga Laundry',0,0,'L');
$pdf->Cell(40);
$pdf->Cell(1,10,':',0,0,'L');
$pdf->Cell(1);
$pdf->Cell(5,10,'Rp. '.$column_5,0,0,'L');
$pdf->Ln(5);

$pdf->SetFont('times','',10);
$pdf->Cell(-5);
$pdf->Cell(5,10,'Ongkos Antar-Jemput',0,0,'L');
$pdf->Cell(40);
$pdf->Cell(1,10,':',0,0,'L');
$pdf->Cell(1);
$pdf->Cell(5,10,'Rp. '.$column_6,0,0,'L');
$pdf->Ln(5);

$pdf->SetFont('times','',10);
$pdf->Cell(-5);
$pdf->Cell(5,10,'Total',0,0,'L');
$pdf->Cell(40);
$pdf->Cell(1,10,':',0,0,'L');
$pdf->Cell(1);
$pdf->Cell(5,10,'Rp. '.$column_7,0,0,'L');
$pdf->Ln();

$pdf->SetFont('times','',10);
$pdf->Cell(-5);
$pdf->Cell(5,10,'Nama Outlet',0,0,'L');
$pdf->Cell(40);
$pdf->Cell(1,10,':',0,0,'L');
$pdf->Cell(1);
$pdf->Cell(5,10,$column_8,0,0,'L');
$pdf->Ln(5);

$pdf->SetFont('times','',10);
$pdf->Cell(-5);
$pdf->Cell(5,10,'Alamat Outlet',0,0,'L');
$pdf->Cell(40);
$pdf->Cell(1,10,':',0,0,'L');
$pdf->Cell(1);
$pdf->Cell(5,10,$column_9,0,0,'L');
$pdf->Ln(5);

$pdf->SetFont('times','',10);
$pdf->Cell(-5);
$pdf->Cell(5,10,'Nomor Tlp Outlet',0,0,'L');
$pdf->Cell(40);
$pdf->Cell(1,10,':',0,0,'L');
$pdf->Cell(1);
$pdf->Cell(5,10,$column_10,0,0,'L');
$pdf->Ln(5);

$pdf->Output();
?>
