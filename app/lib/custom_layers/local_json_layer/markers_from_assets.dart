import 'dart:convert';
import 'package:latlong2/latlong.dart';
import 'package:flutter/services.dart';

import 'custom_marker_model.dart';

Future<List<CustomMarker>> markersFromAssets(String path) async {
  final List<CustomMarker> markers = [];
  final body = await rootBundle.loadString(path).then(
        (jsonStr) => jsonDecode(jsonStr),
      );
  final List features = body["features"] as List;
  for (final feature in features) {
    final properties = feature["properties"];
    final coordinate = feature["geometry"]["coordinates"];
    final position = LatLng(
      coordinate[1] as double,
      coordinate[0] as double,
    );
    markers.add(CustomMarker(
      id: "${properties["OBJECTID"]}",
      position: position,
      name: properties["Name"] as String,
      adress: properties["Adresse"] as String,
      website: properties["Webseite"] as String,
      theme: properties["Themen"] as String,
      info: properties["Informatio"] as String,
    ));
  }
  return markers;
}
