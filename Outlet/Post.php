<!DOCTYPE html>
 
<head> 
  <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Laundry Zonasi Kucex</title>
<link rel="icon" type="image" href="../img/Logo zonasi kucex.png">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/datepicker3.css" rel="stylesheet">
<link href="../css/bootstrap-table.css" rel="stylesheet">
<link href="../css/styles.css" rel="stylesheet">
<script src="../js/lumino.glyphs.js"></script>

   <script type="text/javascript" 
           src="http://maps.google.com/maps/api/js?key=AIzaSyAJFbw0y9iQNHsoh7KC32r93BhRBWA7Too"></script>
</head> 
<body> 
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
      <div class="navbar-header">
        
        <a class="navbar-brand" href="Home.php"><span>Zonasi Kucex</span>Outlet</a>
        <ul class="user-menu">
          <a href="logout.php" class="btn btn-primary"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg>Logout</a>
        </ul>
      </div>        
    </div>
  </nav>


<div class="col-sm-10 col-sm-offset-5 col-lg-10 col-lg-offset-1 main">
  <div class="row">
      <div class="col-lg-12">
        <center><h2>Rute Menuju Pelanggan</h2></center><br>
      </div>
      <div class="col-md-8">
        <div class="panel panel-default">
          <center><div class="panel-heading">
            <h3>Rute Maps</h3> 
          </div></center>
          <div class="panel-body">
          <div id="map" style="width: 690px; height: 600px;"></div>
        </div>
      </div>
      </div>
      <div class="col-md-4">
        <div class="panel panel-default">
          <center><div class="panel-heading">
            <h3>Keterangan Rute</h3>
          </div></center> 
          <div class="panel-body">
          <div id="panel" style="width: 310px; height: 800px;"></div>
        </div>
      </div>
  </div>
</div>

   <script type="text/javascript"> 

     var directionsService = new google.maps.DirectionsService();
     var directionsDisplay = new google.maps.DirectionsRenderer();

     var map = new google.maps.Map(document.getElementById('map'), {
       zoom:10,
       mapTypeId: google.maps.MapTypeId.ROADMAP
     });

     directionsDisplay.setMap(map);
     directionsDisplay.setPanel(document.getElementById('panel'));

     var request = {
       origin: '<?=$saddr;?>', 
       destination: '<?=$daddr;?>',
       travelMode: google.maps.DirectionsTravelMode.DRIVING
     };

     directionsService.route(request, function(response, status) {
       if (status == google.maps.DirectionsStatus.OK) {
         directionsDisplay.setDirections(response);
       }
     });
   </script> 


   <div class="footer">
                <p class="copy">coryright &copy; 2017-<?php echo date("Y")?> Zonasi Kucex</p>
            </div>  
  </div>
  
</body> 
</html>