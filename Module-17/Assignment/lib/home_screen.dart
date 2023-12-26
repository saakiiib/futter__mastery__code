import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Location location = Location();
  LocationData? initialLocation;
  LocationData? currentLocation;
  late StreamSubscription locationSubscription;
  late GoogleMapController googleMapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            SizedBox(width: 8),
            Text(
              "Location Tracker",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(40.7128, -74.0060),
              zoom: 14,
            ),
            onMapCreated: (GoogleMapController controller) {
              googleMapController = controller;
            },
            markers: {
              Marker(
                markerId: const MarkerId('my-current-location'),
                position: LatLng(
                  currentLocation?.latitude ?? 40.7128,
                  currentLocation?.longitude ?? -74.0060,
                ),
                infoWindow: InfoWindow(
                  title: "My Current Location",
                  snippet:
                      '${currentLocation?.latitude} , ${currentLocation?.longitude}',
                ),
              ),
            },
            polylines: {
              Polyline(
                polylineId: const PolylineId('initial-location'),
                width: 5,
                color: Colors.deepPurple,
                points: [
                  LatLng(
                    initialLocation?.latitude ?? 40.7128,
                    initialLocation?.longitude ?? -74.0060,
                  ),
                  LatLng(
                    currentLocation?.latitude ?? 40.7128,
                    currentLocation?.longitude ?? -74.0060,
                  ),
                ],
              ),
            },
          ),
          Positioned(
            top: 16,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Your Real-Time Location",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                if (currentLocation != null)
                  Text(
                    "Lat: ${currentLocation?.latitude}, Lng: ${currentLocation?.longitude}",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
    getInitialLocation();
  }

  void getCurrentLocation() {
    locationSubscription = location.onLocationChanged.listen((liveLocation) {
      Timer.periodic(const Duration(seconds: 10), (timer) {
        currentLocation = liveLocation;
        googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(
                liveLocation.latitude ?? 40.7128,
                liveLocation.longitude ?? -74.0060,
              ),
              zoom: 17,
            ),
          ),
        );
        if (mounted) {
          setState(() {});
        }
        timer.cancel();
      });
    });
  }

  Future<void> getInitialLocation() async {
    initialLocation = await location.getLocation();
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    locationSubscription.cancel();
    super.dispose();
  }
}
