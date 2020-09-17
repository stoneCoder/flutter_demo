
import 'package:flutter/material.dart';
import 'Category.dart';

class SettingPage extends StatefulWidget{
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage>{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("我是分类页面")
        ),
        Divider(),
        ListTile(
          title: Text("我是分类页面"),
        ),
        Divider(),
        ListTile(
          title: Text("我是分类页面"),
        ),
        Divider(),
        ListTile(
          title: Text("我是分类页面"),
        ),
      ],
    );
  }
  
}