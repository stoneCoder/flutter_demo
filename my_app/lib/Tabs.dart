
import 'package:flutter/material.dart';
import 'page/Home.dart';
import 'page/Category.dart';
import 'page/Setting.dart';

class Tabs extends StatefulWidget{
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs>{
  int _currentIndex = 0;

  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
//      appBar: AppBar(
//        title: Text("测试"),
//      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
          unselectedItemColor:Colors.grey,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                    "首页",
                ),
                activeIcon: Icon(Icons.home,color: Colors.blue)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category),
                title: Text("分类"),
                activeIcon: Icon(Icons.category,color: Colors.blue)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text("设置"),
                activeIcon: Icon(Icons.settings,color: Colors.blue)
            ),
          ]),
      //左侧侧边栏
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: DrawerHeader(child: Text('你好')))
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home)
              ),
              title: Text('我的空间'),
              onTap: (){
                Navigator.of(context).pop();//先隐藏侧边栏
                Navigator.pushNamed(context, '/user');//再推送
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.people)
              ),
              title: Text('轮播演示'),
              onTap: (){
                Navigator.of(context).pop();//先隐藏侧边栏
                Navigator.pushNamed(context, '/swiper');//再推送
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.settings)
              ),
              title: Text('按钮演示'),
              onTap: (){
                Navigator.of(context).pop();//先隐藏侧边栏
                Navigator.pushNamed(context, '/customButton');//再推送
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.settings)
              ),
              title: Text('提示框演示'),
              onTap: (){
                Navigator.of(context).pop();//先隐藏侧边栏
                Navigator.pushNamed(context, '/dialog');//再推送
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.settings)
              ),
              title: Text('JsonDemo演示'),
              onTap: (){
                Navigator.of(context).pop();//先隐藏侧边栏
                Navigator.pushNamed(context, '/jsonDemo');//再推送
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.settings)
              ),
              title: Text('DioDemo演示'),
              onTap: (){
                Navigator.of(context).pop();//先隐藏侧边栏
                Navigator.pushNamed(context, '/dioDemo');//再推送
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.settings)
              ),
              title: Text('建立原生通道'),
              onTap: (){
                Navigator.of(context).pop();//先隐藏侧边栏
                Navigator.pushNamed(context, '/bridgeDemo');//再推送
              },
            )
          ],
        )
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: UserAccountsDrawerHeader(
                      accountName: Text('用户名'),
                      accountEmail: Text('邮箱地址'),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600336030552&di=b81293ceb5284c41dcbcd093ec906525&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%3D580%2Fsign%3Dabbf8f972d738bd4c421b239918b876c%2F8169ca8065380cd7e02852a7a244ad3459828159.jpg"),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600336165713&di=965c101ff6fc8d99a4aa7caa427cbf81&imgtype=0&src=http%3A%2F%2Fku.90sjimg.com%2Fback_pic%2F03%2F72%2F08%2F1557b88ef37a19b.jpg'),
                          fit:BoxFit.cover
                        )
                      ),
                ))
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.home)
              ),
              title: Text('我的空间'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.people)
              ),
              title: Text('用户中心'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.settings)
              ),
              title: Text('设置中心'),
            )
          ],
        )
      ),
    );
  }
}