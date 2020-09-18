import 'package:flutter/material.dart';
import '../Tabs.dart';
import '../page/Search.dart';
import '../page/User.dart';
import '../page/CustomButton.dart';
import '../page/swiper.dart';
import '../page/Dialog.dart';
import '../page/JsonDemo.dart';
import '../page/DioDemo.dart';
import '../page/BridgeDemo.dart';

final routes = {
  //路由配置
  '/':(context)=>Tabs(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/user':(context)=>UserPage(),
  '/customButton':(context)=>CustomButtonPage(),
  '/swiper':(context)=>SwiperPage(),
  '/dialog':(context)=>DialogPage(),
  '/jsonDemo':(context)=>JsonDemoPage(),
  '/dioDemo':(context)=>DioDemoPage(),
  '/bridgeDemo':(context)=>BridgeDemoPage()
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
