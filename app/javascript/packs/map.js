import 'mapbox-gl/dist/mapbox-gl.css'
// ADD THIS LINE 👇 (styling)
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css'
import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';
// ADD THIS LINE 👇 (js)
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
// [ ... ]

const addressInput = document.getElementById("order_delivery_address");
console.log(addressInput)

if (addressInput) {
  const places = require('places.js');
  const placesAutocomplete = places({
    container: addressInput
  });
}
