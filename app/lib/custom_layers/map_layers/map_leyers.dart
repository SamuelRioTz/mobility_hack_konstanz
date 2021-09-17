import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:trufi_core/l10n/trufi_localization.dart';
import 'package:trufi_core/models/map_tile_provider.dart';

enum MapLayerIds {
  streets,
  satellite,
}

extension LayerIdsToString on MapLayerIds {
  String enumToString() {
    final Map<MapLayerIds, String> enumStrings = {
      MapLayerIds.streets: "Streets",
      MapLayerIds.satellite: "Satellite",
    };

    return enumStrings[this];
  }

  String enumToStringDE() {
    final Map<MapLayerIds, String> enumStrings = {
      MapLayerIds.streets: "Straßen",
      MapLayerIds.satellite: "Satellit",
    };

    return enumStrings[this];
  }

  String enumToStringEN() {
    final Map<MapLayerIds, String> enumStrings = {
      MapLayerIds.streets: "Streets",
      MapLayerIds.satellite: "Satellite",
    };

    return enumStrings[this];
  }
}

Map<MapLayerIds, List<LayerOptions>> mapLayerOptions = {
  MapLayerIds.streets: [
    TileLayerOptions(
      urlTemplate:
          "https://api.maptiler.com/maps/topo/256/{z}/{x}/{y}@2x.png?key=wiwrAM6XIeYMV6gHAt71",
    ),
  ],
  MapLayerIds.satellite: [
    TileLayerOptions(
      urlTemplate:
          "https://api.maptiler.com/maps/hybrid/256/{z}/{x}/{y}@2x.jpg?key=wiwrAM6XIeYMV6gHAt71",
    ),
  ],
};
Map<MapLayerIds, String> layerImage = {
  MapLayerIds.streets: "assets/images/maptype-streets.png",
  MapLayerIds.satellite: "assets/images/maptype-satellite.png",
};

class MapLayer extends MapTileProvider {
  final MapLayerIds mapLayerId;
  final String mapKey;

  MapLayer(this.mapLayerId, {this.mapKey}) : super();

  @override
  List<LayerOptions> buildTileLayerOptions() {
    return mapLayerOptions[mapLayerId];
  }

  @override
  String get id => mapLayerId.enumToString();

  @override
  WidgetBuilder get imageBuilder => (context) => Image.asset(
        layerImage[mapLayerId],
        fit: BoxFit.cover,
      );

  @override
  String name(BuildContext context) {
    final localeName = TrufiLocalization.of(context).localeName;
    return localeName == "en"
        ? mapLayerId.enumToStringEN()
        : mapLayerId.enumToStringDE();
  }
}
