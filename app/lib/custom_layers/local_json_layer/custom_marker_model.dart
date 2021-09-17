import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class CustomMarker {
  final String id;
  final LatLng position;
  final String name;
  final String adress;
  final String website;
  final String info;
  final String theme;

  CustomMarker({
    @required this.id,
    @required this.position,
    @required this.name,
    @required this.adress,
    @required this.website,
    @required this.info,
    @required this.theme,
  });
}
