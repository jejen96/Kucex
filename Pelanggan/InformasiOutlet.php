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

<!--Icon-->
<script src="../js/lumino.glyphs.js"></script>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> 

  
          <style type="text/css">
            #map img { 
  max-width: none;
}

#map label { 
  width: auto; display:inline; 
} 
            
          </style>

          <script src="http://maps.google.com/maps/api/js?key=AIzaSyAJFbw0y9iQNHsoh7KC32r93BhRBWA7Too"
    type="text/javascript"></script>
</head> 
<body>
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
      <li><a href="Home.php"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg>Home</a></li>
      <li><a href="PesanLaundry.php"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg> Pesan Laundry</a></li>
      <li class="active"><a href="LihatTransaksi.php"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Transaksi Laundry</a></li>
      <br><br>
    <div class="attribution">coryright &copy; 2017-<?php echo date("Y")?> Zonasi Kucex</a></div>
    </ul>
      
  </div>
  
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">     
    
    <div class="row">
      <div class="col-lg-12">
        <center><h1 class="page-header">Informasi Outlet</h1>

          <div id="map" style="width: 650px; height: 300px;"></div>

          <script type="text/javascript"> 
            var locations = [
           <?php
                      include_once("../Koneksi.php");
                      $ord = $_GET['Id_Order'];
                      $sql_lokasi="SELECT * from v_order_user_outlet WHERE Id_Order='$ord'";
                      $result=mysql_query($sql_lokasi) or die(mysql_error());
                      while($data=mysql_fetch_object($result)){
                         ?>
                            ['<?=$data->Nama_Outlet;?>', <?=$data->Lat;?>, <?=$data->Longt;?>],
               <?php
                }
            ?>
            
            
            ];

            var map = new google.maps.Map(document.getElementById('map'), {
              zoom: 12,
              center: new google.maps.LatLng(-6.90389, 107.61861),
              mapTypeId: google.maps.MapTypeId.ROADMAP
            });

            var infowindow = new google.maps.InfoWindow();

            var marker, i;

            for (i = 0; i < locations.length; i++) {  
              marker = new google.maps.Marker({
                position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                map: map
              });

              google.maps.event.addListener(marker, 'click', (function(marker, i) {
                return function() {
                  infowindow.setContent(locations[i][0]);
                  infowindow.open(map, marker);
                }
              })(marker, i));
            }
          </script>
          
          <br>
          <h4>
          <?php
          $ord1 = $_GET['Id_Order'];
          $sql1="SELECT * from v_order_user_outlet WHERE Id_Order='$ord1'";
          $result1=mysql_query($sql1) or die(mysql_error());
         while($data1=mysql_fetch_array($result1)){
                         ?>
                            <?php echo $data1['Nama_Outlet'];?>
                            <br>
                            <?php echo $data1['Alamat_Outlet'];?>
                            <br>
                            <?php echo $data1['Email_Outlet'];?>
                            <br>
                            <?php echo $data1['Nomor_Tlp_Outlet'];?>
               <?php
                }
            ?>
          </h4>
          </center>
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