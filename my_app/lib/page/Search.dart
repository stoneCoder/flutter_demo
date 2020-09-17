
import 'package:flutter/material.dart';



// ignore: must_be_immutable
class SearchPage extends StatelessWidget{
  final arguments ;
  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments!=null?arguments['title']:"搜索"),
      ),
      body: Text("搜索页面哦"),
      floatingActionButton: FloatingActionButton(
          child: Text('返回'),
          onPressed: (){
            Navigator.of(context).pop();
      }),
    );
  }
}