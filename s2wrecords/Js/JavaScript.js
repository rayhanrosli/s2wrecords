function myMap() {
    var mapProp = { lat: 4.8857309, lng: 114.9316692};
    var mapgo = new google.maps.Map(document.getElementById("googleMap"),    
    {
        zoom: 17,
        center: mapProp
    });
    var marker = new google.maps.Marker({
        position: mapProp,
        map: mapgo
    });
}
  
   

