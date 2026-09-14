import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomeMap extends StatefulWidget {
  const HomeMap({super.key, required this.title});

  final String title;

  @override
  State<HomeMap> createState() => _HomeMap(); 

}

class _HomeMap extends State<HomeMap> {
 

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(30,40),
        initialZoom: 13.0,
        minZoom: 13.0,
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
          markers: [
            Marker(
              point: LatLng(30, 40),
              width: 80,
              height: 80,
              child: Icon(Icons.museum_rounded,
                size: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        SimpleAttributionWidget(
          source: Text('OpenStreetMap contributors'),
        ),
      ],
    );
  }
}