<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">    
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="static/bootstrap.css">

    <title>Yamaha RX-465</title>
  </head>
  <body>
    <div class="container">
      <div class="row mb-4 mt-4">
        <div class="col-sm">
          <button class="btn btn-lg btn-danger btn-block" name="KEY_POWER" onclick="pressKey('KEY_POWER')">Power</button>
        </div>
      </div>
      
      <div class="row mb-4">
        <div class="col-sm m-2">
          <button class="btn btn-lg btn-dark btn-block" name="KEY_VOLUMEUP" onclick="pressKey('KEY_VOLUMEUP')">Volume Up (+0.5db)</button>
        </div>
        <div class="col-sm m-2">
          <button class="btn btn-lg btn-dark btn-block" name="KEY_VOLUMEDOWN" onclick="pressKey('KEY_VOLUMEDOWN')">Volume Down (-0.5db)</button>
        </div>
      </div>

      <div class="row mb-4 mt-4">
        <div class="col-sm">
          <button class="btn btn-lg btn-danger btn-block" name="VOL_MUTE" onclick="pressKey('VOL_MUTE')">Mute</button>
        </div>
      </div>

      <div class="row mb-4">
        <div class="col-sm m-2">
          <button class="btn btn-lg btn btn-secondary btn-block" name="INPUT_HDMI1" onclick="pressKey('INPUT_HDMI1')">PC (HDMI)</button>
        </div>
        <div class="col-sm m-2">
          <button class="btn btn-lg btn btn-secondary btn-block" name="INPUT_HDMI2" onclick="pressKey('INPUT_HDMI2')">AirPlay</button>
        </div>
        <div class="col-sm m-2">
          <button class="btn btn-lg btn btn-secondary btn-block" name="INPUT_AV1" onclick="pressKey('INPUT_AV1')">PC (Optical)</button>
        </div>
        <div class="col-sm m-2">
          <button class="btn btn-lg btn btn-secondary btn-block" name="INPUT_AUDIO2" onclick="pressKey('INPUT_AUDIO2')">Vinyl</button>
        </div>
        <div class="col-sm m-2">
          <button class="btn btn-lg btn btn-secondary btn-block" name="INPUT_TUNER" onclick="pressKey('INPUT_TUNER')">FM Radio</button>
        </div>
      </div>

    </div>
    
    <script>
      function pressKey(key) {                          
          var xhttp = new XMLHttpRequest();
          if (key === "8Xvolup") {            
            var i;
            for (i = 0; i < 7; i++) {
              console.log("8xup");              
              xhttp.open("GET", "KEY_VOLUMEUP", true);
              xhttp.send();  
            }
          }
          else if (key === "8Xvolup") {            
            var i;
            for (i = 0; i < 7; i++) {
              console.log("8xdown");
              xhttp.open("GET", "KEY_VOLUMEDOWN", true);
              xhttp.send();  
            }
          }           
          else {
            console.log(key);
            xhttp.open("GET", key, true);
            xhttp.send();                
          }
      }
  </script>
  </body>
</html>