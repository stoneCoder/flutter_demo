import 'package:flutter/material.dart';
import 'dart:async';

class CustomDialogPage extends Dialog {
  String title;
  String content;
  CustomDialogPage({this.title = "", this.content = ""});

  _showTimer(content) {
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (timer) {
      Navigator.pop(content);
      timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
          child: Container(
        height: 300,
        width: 300,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text('关于我们'),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      child: Icon(Icons.close),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            ),
            Divider(),
            Container(
              width: double.infinity,
              child: Text("${this.content}", textAlign: TextAlign.left),
            )
          ],
        ),
      )),
    );
  }
}
