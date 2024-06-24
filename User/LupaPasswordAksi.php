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


</head>
 
<body>
	<center><img src="../img/Logo Zonasi Kucex3.png"></center>
	<div class="row">

		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading"><center><h2>Username : <br>"<?php echo $_POST['Username'] ?>"</h2></center></div></br>

					<?php 
					include_once("../Koneksi.php");
					
					$data=mysql_num_rows(mysql_query("SELECT Username FROM user WHERE Username='$_POST[Username]'"));

					if($data){
						echo "<script type='text/javascript'>alert('Silahkan Buat Password Baru');</script>";
						}else{
						echo "<script type='text/javascript'>alert('Username Tidak Ditemukan Silahkan Hubungi Admin');</script>
						 <meta http-equiv=\"REFRESH\" content=\"0;url=LupaPassword.php\">";}
					?>

				<div class="panel-body">
					<form role="form" method="post" action="UpdateLupaPassword.php">
						<fieldset>
							<div class="form-group">
								
							<Input type="hidden" class="form-control" name="Username" value="<?php echo $_POST['Username'] ?>"></Input>
							
							</div>
							<div class="form-group">
								<h3>Masukan Password Baru</h3>
								<input type="Password" class="form-control" name="Password" placeholder="Password Baru" required>
							</div>
							<div class="form-group">
								<button type="submit" class="form-control btn btn-primary" name="submit">Submite</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
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