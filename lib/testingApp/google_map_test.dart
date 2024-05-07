import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapTest extends StatefulWidget {
  @override
  _GoogleMapTestState createState() => _GoogleMapTestState();
}

class _GoogleMapTestState extends State<GoogleMapTest> {


  MapType _currentMapType= MapType.normal;
  final Set<Marker> _markers = {};
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center =  LatLng(31.4796355, 74.3000874);
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  LatLng _lastMapPosition = _center;

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar: AppBar(
          title:const Text("Google Map Test App"),
          backgroundColor: Colors.green[700],
        ),
        body:
        Column(
          children: [
            Expanded(
              child: Stack(
                children: <Widget>[
                  GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition:const CameraPosition(
                      target:_center,
                      zoom: 11.0,
                    ),
                    mapType: _currentMapType,
                    markers: _markers,
                    onCameraMove: _onCameraMove,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: FloatingActionButton(
                            onPressed: () => _onMapTypeButtonPressed(),
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            backgroundColor: Colors.green,
                            child: const Icon(Icons.map, size: 36.0),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: _onAddMarkerButtonPressed,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          backgroundColor: Colors.green,
                          child: const Icon(Icons.add_location, size: 36.0),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),


          ],
        ),
      );

  }
void _onMapTypeButtonPressed() {
  setState(() {
    _currentMapType = _currentMapType == MapType.normal
        ? MapType.satellite
        : MapType.normal;
  });
}
  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow:const InfoWindow(
          title: 'Really cool place',
          snippet: '5 Star Rating',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }
}
