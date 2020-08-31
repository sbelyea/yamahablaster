<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
    <meta name="apple-mobile-web-app-capable" content="yes">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="static/bootstrap.css">

    <title>Yamaha RX-465</title>
  </head>
  <body>
    <div class="container">
      <div class="row mb-4 mt-4">
        <div class="col-sm">
          <button class="btn btn-lg btn-outline-danger btn-block" name="KEY_POWER" onclick="pressKey('KEY_POWER')">Toggle Power</button>
        </div>
      </div>
      
      <div class="row mb-4">
        <div class="col-sm">
          <button class="btn btn-lg btn-dark btn-block" name="KEY_VOLUMEUP" onclick="pressKey('KEY_VOLUMEUP')">Volume Up (+0.5db)</button>
        </div>
        <div class="col-sm">
          <button class="btn btn-lg btn-dark btn-block" name="KEY_VOLUMEDOWN" onclick="pressKey('KEY_VOLUMEDOWN')">Volume Down (-0.5db)</button>
        </div>
      </div>

      <div class="row mb-4">
        <div class="col-sm">
          <button class="btn btn-lg btn btn-secondary btn-block" name="INPUT_HDMI1" onclick="pressKey('INPUT_HDMI1')">PC (HDMI)</button>
        </div>
        <div class="col-sm">
          <button class="btn btn-lg btn btn-secondary btn-block" name="INPUT_HDMI2" onclick="pressKey('INPUT_HDMI2')">AirPlay</button>
        </div>
        <div class="col-sm">
          <button class="btn btn-lg btn btn-secondary btn-block" name="INPUT_AV1" onclick="pressKey('INPUT_AV1')">PC (Optical)</button>
        </div>
        <div class="col-sm">
          <button class="btn btn-lg btn btn-secondary btn-block" name="INPUT_AUDIO2" onclick="pressKey('INPUT_AUDIO2')">Vinyl</button>
        </div>
        <div class="col-sm">
          <button class="btn btn-lg btn btn-secondary btn-block" name="INPUT_TUNER" onclick="pressKey('INPUT_TUNER')">FM Radio</button>
        </div>
      </div>

    </div>
    
    <script>
      function pressKey(key) {                
          console.log(key);
          var xhttp = new XMLHttpRequest();
          xhttp.open("GET", key, true);
          xhttp.send();                
      }
  </script>
  </body>
</html>