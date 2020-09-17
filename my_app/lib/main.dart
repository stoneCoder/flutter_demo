// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'Tabs.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp()); //单行代码简写
//void main(){
//  runApp(MyApp());
//}

/*主视图显示*/
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      // home: Tabs(),
      // routes: {
      //   //路由配置方法一
      //   '/search':(context)=>SearchPage()
      // },
        initialRoute: "/", //初始化根路由
        // 统一路由动态传参
        onGenerateRoute:onGenerateRoute
    );
  }
}