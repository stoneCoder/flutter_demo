

import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("呵呵哒"),
      ),
      body: Container(
        child: Text("娃哈哈"),
      ),
    );
  }
  
}