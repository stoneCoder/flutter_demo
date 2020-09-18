import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../components/CustomDialog.dart';

class DialogPage extends StatefulWidget{
  @override
  _DialogPageState createState() => _DialogPageState();

}

class _DialogPageState extends State<DialogPage>{

  _alertDialog() async{
    var result = await showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('你确定要删除吗？'),
            actions: [
              FlatButton(
                  onPressed: (){
                      print('取消');
                      Navigator.pop(context,'cancle');
                  },
                  child: Text('取消')
              ),
              FlatButton(
                  onPressed: (){
                    print('确定');
                    Navigator.pop(context,'submit');
                  },
                  child: Text('确定')
              ),
            ],
          );
        }
    );

    print(result);
  }

  _simpleDialog() async{
     showDialog(
         context: context,
         builder: (context){
           return SimpleDialog(
             title: Text('选择内容'),
             children: [
               SimpleDialogOption(
                 child: Text('Option A'),
                 onPressed: (){
                   Navigator.pop(context);
                   print('Option A');
                 },
               ),
               Divider(),
               SimpleDialogOption(
                 child: Text('Option B'),
                 onPressed: (){
                   Navigator.pop(context);
                   print('Option B');
                 },
               ),
               Divider(),
               SimpleDialogOption(
                 child: Text('Option C'),
                 onPressed: (){
                   Navigator.pop(context);
                   print('Option C');
                 },
               ),
             ],
           );
         }
     );
  }

  _modelBottomSheet() async{
     showModalBottomSheet(context: context, builder: (content){
       return Container(
         child: Column(
           children: [
             ListTile(
               title: Text('分享A'),
             ),
             ListTile(
               title: Text('分享B'),
             ),
             ListTile(
               title: Text('分享C'),
             ),
           ],
         ),
       );
     });
  }

  _toast(){
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  _customDialog(){
      showDialog(
          context: context,
          builder: (content){
            return CustomDialogPage(content: "娃哈哈哈哈哈啊哈",);
          }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('提示框'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
              onPressed: _alertDialog,
              child: Text('alert弹出框-AlertDialog')
          ),
          SizedBox(height: 20),
          RaisedButton(
              onPressed: _simpleDialog,
              child: Text('select弹出框-SimpleDialog')
          ),
          SizedBox(height: 20),
          RaisedButton(
              onPressed: _modelBottomSheet,
              child: Text('ActionSheet底部弹出框-showModalBottomSheet')
          ),
          SizedBox(height: 20),
          RaisedButton(
              onPressed: _toast,
              child: Text('toast-fluttertoast第三方')
          ),
          SizedBox(height: 20),
          RaisedButton(
              onPressed: _customDialog,
              child: Text('custom-Dialog弹出框')
          ),
        ],
      ),
    );
  }
}