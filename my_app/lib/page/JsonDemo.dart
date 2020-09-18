import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class JsonDemoPage extends StatefulWidget {
  // Map userInfo = {"username": "张三", "age": 20};
  // var jsonUser = json.encode(userInfo);
  //
  // String userString = '{"username":"zhangsan","age":20}';
  // Map user = json.decode(userString);
  // print(user['username']);

  @override
  _JsonDemoPageState createState() => _JsonDemoPageState();
}

class _JsonDemoPageState extends State<JsonDemoPage> {
  List list = [];

  _getDate() async {
    var url = 'http://a.itying.com/api/productlist';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print('Response body: ${response.body}');
      setState(() {
        this.list = json.decode(response.body)['result'];
      });
    } else {
      print('请求失败');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('JsonDemo页'),
          actions: [IconButton(icon: Icon(Icons.list), onPressed: _getDate)],
        ),
    //     body: this.list.length > 0
    //         ? ListView(
    //             children: this.list.map((value) {
    //               return ListTile(
    //                   title: Text(value['title']
    //                   )
    //               );
    //             }).toList(),
    //           )
    //         : Center(
    // child: Text("数据加载中...")),
      body: this.list.length > 0?ListView.builder(
        itemCount: this.list.length,
          itemBuilder: (context,index){

            return ListTile(
                title: Text(this.list[index]['title']
                )
            );
          }):Text("数据加载中...")
    );
  }
}
