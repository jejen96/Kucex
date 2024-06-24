<?php session_start();?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Laundry Zonasi Kucex</title>
<link rel="icon" type="image" href="../img/Logo zonasi kucex.png">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/datepicker3.css" rel="stylesheet">
<link href="../css/styles.css" rel="stylesheet">

<!--Icon-->
<script src="../js/lumino.glyphs.js"></script>

</head>

<body>
	<!--head -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Home.php"><span>Zonasi Kucex</span></a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> User <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="EditUser.php"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg> Settings</a></li>
							<li><a href="logout.php"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div>
	</nav>
		
		<!-- Menu -->
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		
			<div class="form-group">
				
			</div>
		
		<ul class="nav menu">
			<li class="active"><a href="Home.php"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg>Home</a></li>
			<li><a href="PesanLaundry.php"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Pesan Laundry</a></li>
			<li><a href="LihatTransaksi.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Transaksi Laundry</a></li>
			<br><br>

		<div class="attribution">coryright &copy; 2017-<?php echo date("Y")?> Zonasi Kucex</a></div>
			
		</ul>
		 
	</div>
	
	<!--Isi-->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		
		<div class="row">
			<div class="col-lg-12">
				<center><img src="../img/Logo Zonasi Kucex3.png"></center>

				<?php
					$id = $_SESSION['Id_User'];
					include_once("../Koneksi.php");
					$query_mysql = mysql_query("SELECT * FROM user WHERE Id_User='$id'");
					$nomor = 1;
					while($data = mysql_fetch_array($query_mysql)){

					date_default_timezone_set("Asia/Jakarta");
					$a = time();
					$Waktu = date("G",$a);

					if ($Waktu >= '0' && $Waktu <= '11') {
						$Salam = "Selamat Pagi";
					}elseif ($Waktu >= '12' && $Waktu <= '14') {
						$Salam = "Selamat Siang";
					}elseif ($Waktu >= '15' && $Waktu <= '17') {
						$Salam = "Selamat Sore";
					}elseif ($Waktu >= '17' && $Waktu <= '18') {
						$Salam = "Selamat Petang";
					}elseif ($Waktu >= '19' && $Waktu <= '23') {
						$Salam = "Selamat Malam";
					}
				?>

				<h2 class="navbar-brand">Hallo <?php echo $data['Nama_Lengkap'];?> . . .<?php echo $Salam;?> . . .</h2>
				<h4>Terima kasih Anda telah mengunjungi website kami dan melakukan pendaftaran.</h4>
				<h4>Jasa laundry online <b>Zonasi Kucex</b> kiloan di Bandung, melayani layanan <b>ANTAR JEMPUT</b>	 untuk seluruh wilayah Bandung dan sekitarnya.
				 Kami sudah melayani ratusan pelanggan dari seluruh masyarakat Bandung dan menerbitkan ribuan nota transaksi.</h4>
				<center><h5>Bergabunglah dan nikmatilah pengalaman bersama <b>Laundry Zonasi Kucex.</b></h5>	
				<h5>Anda bisa mendapatkan informasi jasa yang kami sediakan. 
					Dan juga informasi mengenai lokasi outlet untuk kenyamanan dan kemudahan anda.</h5>			
				<h5>Tinggalkan semua kekhawatiran mengenai cucian Anda kepada kami!</h5>
				<h4>Harga Laundry</h4>
						<h5>Harga Laundry : <b>Rp.7.000</b> perkilo</h5>
				<h4>Harga Ongkir</h4>
						<h5>Jika berat laundry <b>kurang dari 5 Kg </b> maka <b>Rp. 1.500</b> perkilo</h5>
						<h5>Jika berat laundry <b>lebih dari 5 Kg </b>maka <b>Rp. 1.000</b> perkilo</h5>
						<h5>Jika berat laundry <b>lebih dari 10 Kg </b>maka <b>Rp. 500</b> perkilo</h5>
						<h5>Jika berat laundry <b>lebih dari 20 Kg </b>maka <b>Rp. 300</b> perkilo</h5>
				<h4>Dimana pun anda berada dan memesan <b>Laundry Zonasi Kucex</b> maka outlet terdekatlah yang akan melayani</h4>
				</center>
			<?php } ?>
			<br>
			</div>
		</div>	
			




		<div class="footer">
                <p class="copy">coryright &copy; 2017-<?php echo date("Y")?> Zonasi Kucex</p>
            </div>	
	</div>
	
	
	<script src="../js/jquery-1.11.1.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/chart.min.js"></script>
	<script src="../js/chart-data.js"></script>
	<script src="../js/easypiechart.js"></script>
	<script src="../js/easypiechart-data.js"></script>
	<script src="../js/bootstrap-datepicker.js"></script>
	<script>
		$('#calendar').datepicker({
		});

		!function ($) {
		    $(document).on("click","ul.nav li.parent > a > span.icon", function(){          
		        $(this).find('em:first').toggleClass("glyphicon-minus");      
		    }); 
		    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	


</body>

</html>
