import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobility_hack_konstanz/custom_layers/local_json_layer/custom_marker_model.dart';
import 'package:trufi_core/l10n/trufi_localization.dart';
import 'package:trufi_core/widgets/custom_location_selector.dart';

import 'custom_marker_enum.dart';

class CustomMarkerModal extends StatelessWidget {
  final CustomMarker element;
  final void Function() onFetchPlan;
  final LayerIds layerId;
  const CustomMarkerModal({
    Key key,
    @required this.element,
    @required this.onFetchPlan,
    @required this.layerId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    String title;
    String body;

    title = element.name ?? "";
    body = element.info ?? "";
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Container(
                  height: 50,
                  width: 50,
                  child: SvgPicture.string(layerIcons[layerId])),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                body,
                style: TextStyle(
                  color: theme.textTheme.bodyText1.color,
                ),
              ),
            ],
          ),
        ),
        CustomLocationSelector(
          onFetchPlan: onFetchPlan,
          locationData: LocationDetail(
            title,
            "",
            element.position,
          ),
        ),
      ],
    );
  }
}
