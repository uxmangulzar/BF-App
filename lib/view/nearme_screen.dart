import 'package:beauty_booking_app/base_scaffold.dart';
import 'package:beauty_booking_app/util/app_colors.dart';
import 'package:beauty_booking_app/util/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

import '../helper/routes.dart';
// import 'package:custom_info_window/custom_info_window.dart';
class NearMeScreen extends StatefulWidget {
  const NearMeScreen({Key? key}) : super(key: key);

  @override
  State<NearMeScreen> createState() => _NearMeScreenState();
}

class _NearMeScreenState extends State<NearMeScreen> {
  MapType _currentMapType= MapType.normal;
  final Set<Marker> _markers = {};
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center =  LatLng(31.4796355, 74.3000874);
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  LatLng _lastMapPosition = _center;
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: "Curling Style Near Me",isArrowBack:true, body:Column(
      children: [
        Expanded(
          child: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition:const CameraPosition(
              target:_center,
              zoom: 11.0,
            ),
            mapType: _currentMapType,
            markers: {
             true?Marker(
             markerId: MarkerId("marker_1"),
             position: LatLng(37.7749, -122.4194),
             infoWindow: InfoWindow(
             title: 'San Francisco',
             snippet: 'A cool place in California.',
             onTap: () {
             // Handle InfoWindow tap
               print("============================= clicked ===");

             },

             ),
             ):   Marker(
                  // This marker id can be anything that uniquely identifies each marker.
                  markerId: MarkerId(_lastMapPosition.toString()),
                  position: _lastMapPosition,
                  infoWindow: const InfoWindow(
                    title: 'Really cool place',
                    snippet: '5 Star Rating',
                  ),

                  icon: BitmapDescriptor.defaultMarker,
                )
              },
            onCameraMove: _onCameraMove,
            zoomControlsEnabled: false,
          ),
        ),
        InkWell(
          onTap: (){Get.toNamed(RouteHelper.nearMeList);},
          child: Container(
            padding:const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
                color: AppColors.kPrimary,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Icon(Icons.list,color: AppColors.kWhite,size: 42,),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text("List View",style: medium.copyWith(fontSize: 18)),
                ),
              ],
            ),),
        )
      ],
    ) ,);
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
      _markers.add(

          Marker(
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
  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }
}
