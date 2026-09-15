import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../data/obras_escaneadas.dart';

class HomeMap extends StatefulWidget {
  const HomeMap({super.key, required this.title});

  final String title;

  @override
  State<HomeMap> createState() => _HomeMap(); 

}

class _HomeMap extends State<HomeMap> {
List<Marker> markers=[];

List<Marker> get_markers(obras_escaneadas){

  List<Marker> lista_markers=[];
    for (int i=0; i<obras_escaneadas.length; i++){
      lista_markers.add(
        Marker(
          point: LatLng(obras_escaneadas[i]['latitude'], obras_escaneadas[i]['latitude']),
          width: 80,
          height: 80,
          child: 
            Icon(Icons.museum_rounded,
              size: 20,
              color: Theme.of(context).primaryColor,
            ),
        )
      );
    }

  return lista_markers;
}

  @override
  Widget build(BuildContext context) {
    initState() {
      // TODO: implement initState
      super.initState();
      markers=get_markers(esculturas_escaneadas);
      print(markers);
    }
    return FlutterMap(
      mapController: new MapController(),
      options: MapOptions(
        initialCenter: LatLng(-22.3219379,-49.0757533),
        initialZoom:13.62,
        minZoom: 9,
        maxZoom: 25.0,
      ),
      children: [
        TileLayer( // Bring your own tiles
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: "app.bauru.arte.publica",
          tileProvider: NetworkTileProvider(
            headers: {
              "Access-Control-Allow-Origin": "*",
            },
          ),
        ),
        MarkerLayer(
          markers: markers
        ),
        SimpleAttributionWidget(
          source: Text('OpenStreetMap contributors'),
        ),
      ],
    );
  }
}