// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class PatientmapPage extends StatefulWidget {
//   String get title => null;

//   @override
//   PatientmapPageState createState() {
//     return new PatientmapPageState();
//   }
// }

// class PatientmapPageState extends State<PatientmapPage>  {
// Completer<GoogleMapController> _controller = Completer();

//   // Iterable<Marker> get markers => null;
//   // @override
//   @override
//    @override
//   Widget build(BuildContext context) {
//      return new MaterialApp(
//        debugShowCheckedModeBanner: false,
//     home: new Scaffold(
//            backgroundColor: Color(0xFFB3E5FC),
//        appBar: AppBar(
//          title: Text("Google Map"),
//            actions: [
//       //action button
//        IconButton(
//          icon: Image.asset('assets/icons/heart.png'),
//          onPressed: () { },
//        ),
//      ],
//          backgroundColor: Colors.indigo,
//        ),
//       body: GoogleMap(
//         mapType: MapType.normal,
//         initialCameraPosition: CameraPosition(
//           target: LatLng(15.1989675, 104.8405362),//ของจังหวัดตัวเอง104.8405362
//           zoom: 16,
//         ),
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//         // markers: Set<Marker>.of(markers),

//       )
      
//     ),
//      );
//   }
// }
 import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// void main() => runApp(MyApp());

class PatientmapPage extends StatefulWidget {
  String get title => null;
  @override
  _PatientmapPageState createState() => _PatientmapPageState();
}

class _PatientmapPageState extends State<PatientmapPage> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(15.1989675, 104.8405362);

  final Set<Marker> _markers = {};

  LatLng _lastMapPosition = _center;

  MapType _currentMapType = MapType.normal;

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
        infoWindow: InfoWindow(
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

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
     return new MaterialApp(
        debugShowCheckedModeBanner: false,
     home: new Scaffold(
           appBar: AppBar(
          title: Text("Google Map"),
            actions: [
       //action button
        IconButton(
          icon: Image.asset('assets/icons/heart.png'),
          onPressed: () { },
        ),
      ],
          backgroundColor: Colors.indigo,
        ),
     
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
              mapType: _currentMapType,
              markers: _markers,
              onCameraMove: _onCameraMove,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: <Widget> [
                    FloatingActionButton(
                      onPressed: _onMapTypeButtonPressed,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.green,
                      child: const Icon(Icons.map, size: 36.0),
                    ),
                    SizedBox(height: 16.0),
                    FloatingActionButton(
                      onPressed: _onAddMarkerButtonPressed,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.green,
                      child: const Icon(Icons.add_location, size: 36.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}