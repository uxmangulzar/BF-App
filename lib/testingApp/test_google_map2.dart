import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class MapScreenTestApp extends StatefulWidget {
  @override
  _MapScreenTestAppState createState() => _MapScreenTestAppState();
}

class _MapScreenTestAppState extends State<MapScreenTestApp> {
  late GoogleMapController mapController;

  static const LatLng _center =  LatLng(31.4796355, 74.3000874);
  List<Marker> _markers = []; // List of ATM markers

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    requestLocationPermission(); // Request location permission when map is created
    fetchNearbyATMs(_center); // Fetch and add nearby ATM markers
  }

  void requestLocationPermission() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      // mapController.setMyLocationEnabled(true);
    } else if (status.isDenied) {
      // Handle denied permission
    } else if (status.isPermanentlyDenied) {
      // Handle permanently denied permission
    }
  }

  Future<void> fetchNearbyATMs(LatLng location) async {
    const apiKey = 'AIzaSyDp7ID-iqB6tY7xQEX_trmT9XuQVbz0Dxw';
    const apiUrl = 'https://maps.googleapis.com/maps/api/place/nearbysearch/json';
    final response = await http.get(Uri.parse('$apiUrl?location=${location.latitude},${location.longitude}&radius=500&type=atm&key=$apiKey'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['results'] != null) {
        for (var result in data['results']) {
          var atmLocation = LatLng(
            result['geometry']['location']['lat'],
            result['geometry']['location']['lng'],
          );

          _markers.add(
            Marker(
              markerId: MarkerId(atmLocation.toString()),
              position: atmLocation,
              infoWindow: InfoWindow(
                title: 'ATM Location',
                snippet: result['name'],
              ),
            ),
          );
        }
        setState(() {}); // Refresh the UI with new markers
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ATM Finder'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 12.0,
        ),
        markers: Set.from(_markers),
      ),
    );
  }
}
