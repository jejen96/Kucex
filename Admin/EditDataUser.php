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

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="Home.php"><span>Zonasi Kucex</span>Admin</a>
				
			</div>
							
		</div>
	</nav>


	<!-- Menu -->	
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		
			<div class="form-group">
				
			</div>
		
		<ul class="nav menu">
			<li><a href="Home.php"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg>Home</a></li>
			<li class="active"><a href="LihatUser.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Lihat User</a></li>
			<li><a href="DaftarOutlet.php"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Daftar Outlet</a></li>
			<li><a href="LihatOutlet.php"><svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"></use></svg> Lihat Outlet</a></li>
			<li><a href="LihatTransaksi.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Lihat Transaksi</a></li>
			<br><br>
		<div class="attribution">coryright &copy; 2017-<?php echo date("Y")?> Zonasi Kucex</a></div>
		</ul>
			
	</div>
	<?php 
	include_once("../Koneksi.php");
	$data = $_GET['Id_User'];
	$query_mysql = mysql_query("SELECT * FROM User WHERE Id_User='$data'")or die(mysql_error());
	$nomor = 1;
	while($data = mysql_fetch_array($query_mysql)){
	?>
	
	<!--Isi-->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		
		<div class="row">
			<div class="col-lg-12">
				<center><h1 class="page-header">Edit Data User</h1></center>
			</div>
			<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
					<center><form role="form" action="UpdateDataUser.php" method="post">
						<fieldset>
							<div class="form-group">
								<input type="hidden" class="form-control" name="Id_User" placeholder="Id User" required value="<?php echo $data['Id_User'] ?>">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="Nama_Lengkap" placeholder="Nama" required value="<?php echo $data['Nama_Lengkap'] ?>">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="Alamat_Lengkap" placeholder="Alamat_Lengkap" required value="<?php echo $data['Alamat_Lengkap'] ?>">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="Email_User" placeholder="Email" required value="<?php echo $data['Email_User'] ?>">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="Nomor_Tlp" placeholder="Nomor" required value="<?php echo $data['Nomor_Tlp'] ?>">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="Username" placeholder="Username" required value="<?php echo $data['Username'] ?>">
							</div>			 					 
							 <button type="submit" name="submit" class="btn btn-primary">Simpan</button>
						</fieldset>
					</form></center>
				</div>
		</div><br>	
		<?php } ?>


		

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