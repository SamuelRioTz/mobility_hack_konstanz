import 'package:flutter/material.dart';
import 'package:mobility_hack_konstanz/theme.dart';

import 'package:mobility_hack_konstanz/configuration_service.dart';
import 'package:trufi_core/models/menu/menu_item.dart';
import 'package:trufi_core/models/menu/social_media/facebook_social_media.dart';
import 'package:trufi_core/models/menu/social_media/instagram_social_media.dart';
import 'package:trufi_core/models/menu/social_media/twitter_social_media.dart';
import 'package:trufi_core/models/menu/social_media/website_social_media.dart';
import 'package:trufi_core/services/plan_request/online_graphql_repository/graphql_client/hive_init.dart';
import 'package:trufi_core/trufi_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();
  // Run app
  runApp(
    TrufiApp(
      theme: primaryTheme,
      bottomBarTheme: bottomBarTheme,
      configuration: setupTrufiConfiguration(),
      menuItems: [
        ...defaultMenuItems,
        [
          FacebookSocialMedia("https://www.facebook.com/trufiapp"),
          InstagramSocialMedia("https://www.instagram.com/trufi.app"),
          TwitterSocialMedia("https://twitter.com/TrufiAssoc"),
          WebSiteSocialMedia("https://www.trufi.app/blog/"),
        ]
      ],
    ),
  );
}
