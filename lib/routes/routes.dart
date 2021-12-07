import 'package:flutter/material.dart';

import 'package:app_qr_reader/pages/home_page.dart';
import 'package:app_qr_reader/pages/map_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes()
{
  return <String, WidgetBuilder>
  {
    'home'  : ( _ ) => const HomePage(),
    'map' : ( _ ) => const MapPage()
  };
}
