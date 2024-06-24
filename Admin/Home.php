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

<!--Icons-->
<script src="../js/lumino.glyphs.js"></script>

</head>

<body>
	<!--Akun -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Home.php"><span>Zonasi Kucex</span>Admin</a>
				<ul class="user-menu">
					
					<a href="logout.php" class="btn btn-primary"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg>Logout</a>
						
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
			<li><a href="LihatUser.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Lihat User</a></li>
			<li><a href="DaftarOutlet.php"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Daftar Outlet</a></li>
			<li><a href="LihatOutlet.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Lihat Outlet</a></li>
			<li><a href="LihatTransaksi.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg> Lihat Transaksi</a></li>
			<br><br>

		<div class="attribution">coryright &copy; 2017-<?php echo date("Y")?> Zonasi Kucex</a></div>
			
		</ul>
		 
	</div>
	
	<!--Isi-->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		
		<div class="row">
			<div class="col-lg-12">
				<center><h1 class="page-header">Home</h1></center>

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

				<h3>Hallo <?php echo $data['Nama_Lengkap'];?> . . .<?php echo $Salam;?> . . .</h3>
				<center><h4>Silahkan untuk menglihat transaksi outlet yang sudah diproses namun belum diantar atau belum diselesaikan</h4>			
						<h4>Untuk kenyaman pelanggan maka harus selesai tepat waktu</h4>
						<h4>Peringatkan outlet yang lalay dalam bekerja</h4>
						<h4>Ayo sambut hangatnya mentari pagi dengan semangat membara</h4>
						<h4>Bekerja tak kenal waktu. Bekerja di pagi, siang, dan malam hari demi merangkai masa depan yang lebih baik</h4>
						<h4>Kaya bukanlah tujuan. Kaya hanyalah efek dari kesuksesan</h4>
						<a href="LihatOutlet.php"><svg class="glyph stroked app-window-with-content"><use xlink:href="#stroked-app-window-with-content"></use></svg></a>
						<h4><b>Lihat Transaksi Outlet</b></h4>
				</center>
			<?php } ?>
			</div>
		</div>	
		<div class="panel panel-red">
			<div class="panel-heading dark-overlay" class="<?php echo date('Y-m-d');?>"><svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"></use></svg>Kalender</div>
			<div class="panel-body">
				<div id="calendar"> <?php echo date('Y-m-d');?></div>
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
