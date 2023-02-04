import 'package:flutter/material.dart';
import 'package:web_view/screen/home_screen.dart';

// webview에서 .... PlatformException .... 에러: terminal에서 flutter clean
void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
