var map = new L.Map("oMeuMapa", {center: [40.6300,-8.6571],zoom: 15});
var osmUrl="http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png";
var osmAttrib="Map data OpenStreetMap contributors";
var osm = new L.TileLayer(osmUrl, {attribution: osmAttrib});
map.addLayer(osm);

var pontos = [
L.marker([40.633258, -8.659097]).bindPopup("Universidade de Aveiro - DETI"),
L.marker([60.128162, 18.643501]).bindPopup("Suécia - Fundador de Spotify")
];

alert("Procure o país da Suécia no mapa, após conhecer a nossa instituição!  🇸🇪");
for(i in pontos) {
pontos[i].addTo(map);
}


