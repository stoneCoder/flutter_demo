import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioDemoPage  extends StatefulWidget{
  @override
  _DioDemoPageState createState() => _DioDemoPageState();

}

class _DioDemoPageState extends State<DioDemoPage>{

  @override
  void initState(){
    super.initState();
    this._getData();
  }

  _getData() async{
    var url = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1';
    Response response = await Dio().get(url);
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DioDemo页'),
      ),
    );
  }

}