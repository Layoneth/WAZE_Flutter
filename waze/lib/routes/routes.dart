import 'package:flutter/material.dart';
import 'package:waze/pages/favorites_page.dart';
import 'package:waze/pages/home_page.dart';
import 'package:waze/pages/planned_page.dart';
import 'package:waze/pages/ride_out_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
      '/home'       : (BuildContext context) => HomePage(),
      '/favorites'  : (BuildContext context) => FavoritePage(),
      '/planned'    : (BuildContext context) => PlannedPage(),
      '/myRideOut'  : (BuildContext context) => RideOutPage(),
  };
}