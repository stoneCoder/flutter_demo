import 'dart:async';
import 'package:flutter/services.dart';

class FlutterNativeBridgePlugin{
  static const MethodChannel _channel = 
      const MethodChannel('com.example.myApp');

  static Future<String> get platformVersionName async{
    final String versionName = await _channel.invokeMethod('getVersionName');
    return versionName;
  }
}