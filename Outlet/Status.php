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
	<!--Head -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Home.php"><span>Zonasi Kucex</span>Outlet</a>
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
			<li><a href="Home.php"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg>Home</a></li>
			<li><a href="LihatOrder.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Lihat Order</a></li>
			<li><a href="LihatAntar.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Lihat Antar</a></li>
			<li><a href="DataTransaksi.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Data Transaksi</a></li>
			<li class="active"><a href="Status.php"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"/></svg>Status Outlet</a></li>
			<br><br>
			<div class="attribution">coryright &copy; 2017-<?php echo date("Y")?> Zonasi Kucex</a></div>
			
		</ul>
		 
	</div>
	
	<!--Isi-->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<center><img src="../img/Logo Zonasi Kucex3.png"></center>
		<div class="row">
			<div class="col-lg-12">
				
				
				 <?php
					$id = $_SESSION['Id_User'];
					include_once("../Koneksi.php");
					$query_mysql = mysql_query("SELECT * FROM Outlet WHERE Id_Outlet='$id'");
					$nomor = 1;
					while($data = mysql_fetch_array($query_mysql)){

					if ($data['Status'] == 'Kosong') {
						$Status = 'Penuh';
					}
					if ($data['Status'] == 'Penuh') {
						$Status = 'Kosong';
					}
				?>


			
			<div class="panel-heading"><center><h2>"<?php echo $data['Nama_Outlet'] ?>"</h2></center></div>
			<center>
				<div class="panel-body">
					<form role="form" method="post" action="UpdateStatus.php">
						<fieldset>
							<div class="form-group">
								<div class="panel-heading"><center><h2>"Status : <?php echo $data['Status'] ?>"</h2></center></div>
								<input type="hidden" class="form-control" name="Status" Value="<?php echo $Status ?>">
							</div>
							<h4>Untuk Merubah Status Outlet silahkan klik button dibawah</h4>
							<div class="form-group">
								<button type="submit" class="btn btn-primary" name="submit"><h3><?php echo $Status ?></h3></button>
							</div>
						</fieldset>
					</form>
				</div>
			</center>
	<?php }  ?>


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
