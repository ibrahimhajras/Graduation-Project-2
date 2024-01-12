import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../controller/geolocator.dart';
import '../Static/SizeConfig.dart';

class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget({super.key});

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  @override
  void initState() {
    determinePosition();
    super.initState();
  }

  List<Marker> marker = [];
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.063287, 36.240675),
    zoom: 7.8,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(375),
      child: GoogleMap(
        cameraTargetBounds: CameraTargetBounds(
          LatLngBounds(
            southwest: LatLng(29.375534, 34.886953),
            northeast: LatLng(33.176641, 37.336934),
          ),
        ),
        zoomControlsEnabled: true,
        markers: marker.toSet(),
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        onTap: (argument) {
          marker.add(Marker(
              markerId: const MarkerId('0'),
              position: LatLng(argument.latitude, argument.longitude)));
          setState(() {});
        },
      ),
    );
  }
}
