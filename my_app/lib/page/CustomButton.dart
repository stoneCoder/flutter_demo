import 'package:flutter/material.dart';

class CustomButtonPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
        onPressed: (){
          print('FloatingActionButton');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('普通按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10,//阴影效果
                onPressed: (){
                  print('点击普通按钮');
                },
              ),
              SizedBox(width: 10),
              RaisedButton.icon(onPressed: null,
                  icon: Icon(Icons.search),
                  label: Text('图标按钮')
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //设置按钮宽高
                height: 50,
                width: 300,
                child: RaisedButton(
                  child: Text('设置宽高按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10,//阴影效果
                  onPressed: (){
                    print('点击设置宽高按钮');
                  },
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container(
                height: 45,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: RaisedButton(
                  child: Text('自适应按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10,//阴影效果
                  onPressed: (){
                    print('点击自适应按钮');
                  },
                ),
              ))
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //设置按钮宽高
                height: 50,
                width: 300,
                child: RaisedButton(
                  child: Text('设置圆角按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10,//阴影效果
                  onPressed: (){
                    print('点击设置圆角按钮');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //设置按钮宽高
                height: 80,
                child: RaisedButton(
                  child: Text('圆形按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10,//阴影效果
                  onPressed: (){
                    print('点击设置圆形按钮');
                  },
                    splashColor: Colors.green,//点击样式
                  shape: CircleBorder(
                      side: BorderSide(
                          color: Colors.blue
                      )
                  )
                ),
              ),
              FlatButton(
                onPressed: (){},
                child: Text('Flat按钮'),
                color: Colors.blue,
                textColor: Colors.yellow
              ),
              SizedBox(width: 10),
              OutlineButton(onPressed: (){},
              child: Text('按钮'),)
            ],
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget{
  final text;
  final pressed;
  final width;
  final height;

  const MyButton({this.text, this.pressed, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text),
      onPressed: this.pressed,
    );
  }

}