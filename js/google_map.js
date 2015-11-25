function initialize() {
      var myLatlng = new google.maps.LatLng(41.7179291, 44.7845294);
      var mapOptions = {
        zoom: 15,
        center: myLatlng
      }
      var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

      var marker = new google.maps.Marker({
          position: myLatlng,
          map: map,
          title: 'Hello World!'
      });
    }
    google.maps.event.addDomListener(window, 'load', initialize);