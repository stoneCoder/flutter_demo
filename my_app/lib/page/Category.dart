import 'package:flutter/material.dart';
import 'Search.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Expanded(
                    child: TabBar(tabs: [Tab(text: "推荐"), Tab(text: "热销")]))
              ],
            ),
          ),
          body: TabBarView(children: [
            ListView(
              children: [
                ListTile(
                  title: Text("我是推荐页第一个"),
                  onTap:(){
                    Navigator.pushNamed(context, "/search",arguments: {
                      "title":"动态页面传参"
                    });
                  },
                ),
                Divider(),
                ListTile(
                  title: Text("我是推荐页第二个"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是推荐页第三个"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是推荐页第四个"),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(title: Text("我是热销页第一个")),
                Divider(),
                ListTile(
                  title: Text("我是热销页第二个"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是热销页第三个"),
                ),
                Divider(),
                ListTile(
                  title: Text("我是热销页第四个"),
                ),
              ],
            )
          ]),
        ));
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("这是分类页面"),
    //   ),
    //   body: Center(
    //       child: RaisedButton(
    //           child: Text("测试按钮"),
    //           onPressed: (){
    //               // Navigator.of(context).push(
    //               //     MaterialPageRoute(builder: (BuildContext context){
    //               //       return SearchPage(title:"什么鬼333");
    //               //     })
    //               // );
    //               Navigator.pushNamed(context, "/search",arguments: {
    //                 "title":"动态页面传参"
    //               });
    //           })
    //   )
    // );
  }
}
