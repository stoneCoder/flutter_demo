import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/FlutterNativeBridgePlugin.dart';

class BridgeDemoPage extends StatefulWidget{
  @override
  _BridgeDemoPage createState() => _BridgeDemoPage();

}

class _BridgeDemoPage extends State<BridgeDemoPage>{

  static const platform = const MethodChannel('com.example.myApp/Runner');

  String _batteryLevel = 'Unknown battery level.';
  String _versionName = 'Unknown sersion name';

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }

  Future<void> _getVersionName() async{
    String versionName;
    try {
      versionName = await FlutterNativeBridgePlugin.platformVersionName;
    } on PlatformException catch (e) {

    }

    setState(() {
      _versionName = versionName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('原生通道交互'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: _getVersionName,
              child: Text('调用通道方法'),
            ),
            Text("${this._versionName}")
          ],
        ),
      ),
    );
  }

}