import 'package:flutter/material.dart';
import 'package:mobility_hack_konstanz/custom_layers/local_json_layer/custom_marker_enum.dart';
import 'package:mobility_hack_konstanz/custom_layers/local_json_layer/layer.dart';
import 'package:trufi_core/l10n/trufi_localization.dart';
import 'package:trufi_core/models/custom_layer.dart';

final List<CustomLayerContainer> customLayers = [
  CustomLayerContainer(
    name: (context) =>
        TrufiLocalization.of(context).localeName == "en" ? "Parking" : "Parken",
    icon: (context) => const Icon(
      Icons.map,
      color: Colors.grey,
    ),
    layers: [
      Layer(LayerIds.allParkingSpaces),
      Layer(LayerIds.disabledParking),
      Layer(LayerIds.carSharing),
    ],
  ),
];
