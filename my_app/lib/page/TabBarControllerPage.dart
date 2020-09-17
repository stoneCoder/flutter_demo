

import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget{
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();

}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: "热销"),
              Tab(text: "推荐")
            ]
        )
      ),
      body: TabBarView(
          controller: _tabController,
          children: [
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
      ])
    );
  }
  
}