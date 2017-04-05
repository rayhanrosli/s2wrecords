function myMap() {
    var mapProp = {
        center: new google.maps.LatLng(4.9311206, 114.9516869),
        zoom: 5,
    };
    var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
}