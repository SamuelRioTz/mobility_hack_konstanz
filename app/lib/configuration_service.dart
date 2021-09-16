import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:trufi_core/blocs/configuration/configuration.dart';
import 'package:trufi_core/blocs/configuration/models/transport_configuration.dart';
import 'package:trufi_core/blocs/configuration/models/animation_configuration.dart';
import 'package:trufi_core/blocs/configuration/models/attribution.dart';
import 'package:trufi_core/blocs/configuration/models/language_configuration.dart';
import 'package:trufi_core/blocs/configuration/models/map_configuration.dart';
import 'package:trufi_core/blocs/configuration/models/url_collection.dart';
import 'package:trufi_core/models/definition_feedback.dart';
import 'package:trufi_core/models/enums/server_type.dart';

const baseDomain = "api.stadtnavi.de";
Configuration setupTrufiConfiguration() {
  // Attribution
  final attribution = Attribution(
    representatives: [
      "Christoph Hanser",
      "Samuel Rioja",
    ],
    team: [
      "Andreas Helms",
      "Annika Bock",
      "Christian Brückner",
      "Javier Rocha",
      "Luz Choque",
      "Malte Dölker",
      "Martin Kleppe",
      "Michael Brückner",
      "Natalya Blanco",
      "Neyda Mili",
      "Raimund Wege",
    ],
    translators: [
      "Gladys Aguilar",
      "Jeremy Maes",
      "Gaia Vitali Roscini",
    ],
    routes: [
      "Trufi team",
      "Guia Cochala team",
    ],
    openStreetMap: [
      "Marco Antonio",
      "Noémie",
      "Philipp",
      "Felix D",
      "Valor Naram",
    ],
  );

  // Urls
  final urls = UrlCollection(
    openTripPlannerUrl:
        "http://159.89.21.4:8080/otp/routers/default/index/graphql",
  );

  // Map
  final map = MapConfiguration(
    center: LatLng(47.661942, 9.172430),
    southWest: LatLng(47.261942, 9.772430),
    northEast: LatLng(46.661942, 8.172430),
  );

  // Languages
  final languages = [
    LanguageConfiguration("de", "DE", "Deutsch"),
    LanguageConfiguration("en", "US", "English"),
    LanguageConfiguration("es", "ES", "Español", isDefault: true),
    LanguageConfiguration("fr", "FR", "Français"),
    LanguageConfiguration("it", "IT", "Italiano"),
    LanguageConfiguration("qu", "BO", "Quechua simi"),
  ];

  final feedbackDefinition = FeedbackDefinition(
    FeedBackType.url,
    "https://stadtnavi.de/feedback/",
  );

  final customTranslations = TrufiCustomLocalizations()
    ..title = {
      const Locale("de"): "Honkstanz App (German)",
      const Locale("en", "US"): "Honkstanz App (English)"
    }
    ..tagline = {
      const Locale("de"): "Tagline (German)",
      const Locale("en", "US"): "Tagline (English)"
    };

  return Configuration(
    customTranslations: customTranslations,
    feedbackDefinition: feedbackDefinition,
    supportedLanguages: languages,
    serverType: ServerType.graphQLServer,
    teamInformationEmail: "info@trufi.app",
    attribution: attribution,
    animations: AnimationConfiguration(success: null),
    transportConf: const TransportConfiguration(showTransportMarker: false),
    map: map,
    urls: urls,
    showWeather: false,
  );
}
