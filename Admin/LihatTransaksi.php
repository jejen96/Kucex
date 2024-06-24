<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Laundry Zonasi Kucex</title>
<link rel="icon" type="image" href="../img/Logo zonasi kucex.png">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/datepicker3.css" rel="stylesheet">
<link href="../css/bootstrap-table.css" rel="stylesheet">
<link href="../css/styles.css" rel="stylesheet">

<!--Icons-->
<script src="../js/lumino.glyphs.js"></script>


</head>

<body onload="peta_awal()">
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
			<li><a href="Home.php"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg> Home</a></li>
			<li><a href="LihatUser.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Lihat User</a></li>
			<li><a href="DaftarOutlet.php"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Daftar Outlet</a></li>
			<li><a href="LihatOutlet.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Lihat Outlet</a></li>
			<li class="active"><a href="LihatTransaksi.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Lihat Transaksi</a></li>
			<br><br>
		<div class="attribution">coryright &copy; 2017-<?php echo date("Y")?> Zonasi Kucex</a></div>
		</ul>
			
	</div>
	
	<!--Isi-->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		
		<div class="row">
			<div class="col-lg-12">
				<center><h1 class="page-header">Transaksi Seluruh Outlet</h1></center>
			</div>
		</div>	
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<table data-toggle="table" data-url="tables/data1.json"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						    <thead>
						   <tr>
						    	<th data-sortable="true" ><center>Nomor</center></th>
						        <th data-sortable="true"><center>Nama Outlet</center></th>
						        <th data-sortable="true"><center>Nama Pelanggan</center></th>
						        <th data-sortable="true"><center>Alamat Order</center></th>
						        <th data-sortable="true"><center>Waktu Order</center></th>
						        <th data-sortable="true" ><center>Waktu Selesai</center></th>
						        <th data-sortable="true" ><center>Status</center></th>
						   						   
						    </tr>
						    </thead>
						    <?php 
							include_once("../Koneksi.php");
							
							$query_mysql = mysql_query("SELECT * FROM v_order_user_outlet ")or die(mysql_error());
							$nomor = 1;
							while($data = mysql_fetch_array($query_mysql)){
							?>
							<tr>
								<td><?php echo $nomor++; ?></td>
								<td><?php echo $data['Nama_Outlet']; ?></td>
								<td><?php echo $data['Nama_Lengkap']; ?></td>
								<td><?php echo $data['Alamat_Order']; ?></td>
								<td><?php echo $data['Waktu_Order']; ?></td>
								<td><?php echo $data['Waktu_Selesai']; ?></td>
								<td><?php echo $data['Status']; ?></td>
								
							</tr>
							<?php } ?>
						</table>
						<a class="btn btn-primary" href="CetakData.php">Cetak Transaksi</a>
					</div>
				</div>
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
	<script src="../js/bootstrap-table.js"></script>
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
