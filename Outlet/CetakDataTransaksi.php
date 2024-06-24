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
<link href="../css/bootstrap-table.css" rel="stylesheet">
<link href="../css/styles.css" rel="stylesheet">
<style type="text/css">
.plain {height:20px; vertical-align:middle;}
</style>
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
			<li class="active"><a href="DataTransaksi.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Data Transaksi</a></li>
			<li><a href="Status.php"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"/></svg>Status Outlet</a></li>
		<div class="attribution">coryright &copy; 2017-<?php echo date("Y")?> Zonasi Kucex</a></div>
		</ul>
			
	</div>
	
	<!--Isi-->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		
		<div class="row">
			<div class="col-lg-12">
				<center><h1 class="page-header">Cetak Data Transaksi</h1></center>
			</div>
			<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
					<center><form role="form" action="CetakData.php" method="post" name="postform">
						<fieldset>
							<div class="form-group">
							<center><h4>Tanggal Awal</h4></center>
							<input type="text" name="tanggal_awal" placeholder="Tanggal Akhir" size="30"/>
						    <a href="javascript:void(0)" onClick="if(self.gfPop)gfPop.fPopCalendar(document.postform.tanggal_awal);return false;" >
						    <img src="../css/calender/calender.jpeg" alt="" name="popcal" width="34" height="29" border="0" align="absmiddle" id="popcal" /></a>				
    						</div>
							
							<div class="form-group">
								<center><h4>Tanggal Akhir</h4></center>
								<input type="text" name="tanggal_akhir" placeholder="Tanggal Akhir" size="30">
								<a href="javascript:void(0)" onClick="if(self.gfPop)gfPop.fPopCalendar(document.postform.tanggal_akhir);return false;" >
						    <img src="../css/calender/calender.jpeg" alt="" name="popcal" width="34" height="29" border="0" align="absmiddle" id="popcal" /></a>				
    
							</div>
							 <button type="submit" name="submit" class="btn btn-primary">Cetak</button>
						</fieldset>
					</form></center>
				</div>
		</div><br>	



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
	<iframe width=174 height=189 name="gToday:normal:../css/calender/normal.js" id="gToday:normal:../css/calender/normal.js" src="../css/calender/ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
</iframe>
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
