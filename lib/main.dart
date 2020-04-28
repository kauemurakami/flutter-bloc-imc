import 'package:flutter/material.dart';
import 'package:imcbloc/ui/android/material-app.dart';
import 'package:imcbloc/ui/ios/cupertino-app.dart';
import 'dart:io' show Platform;

void main() =>
Platform.isAndroid ?  runApp(MyMaterialApp()) : runApp(MyCupertinoApp());


