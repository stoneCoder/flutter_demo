import 'package:flutter/material.dart';
import '../Tabs.dart';
import '../page/Search.dart';
import '../page/User.dart';
import '../page/CustomButton.dart';

final routes = {
  //路由配置
  '/':(context)=>Tabs(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/user':(content)=>UserPage(),
  '/customButton':(content)=>CustomButtonPage()
};


var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
