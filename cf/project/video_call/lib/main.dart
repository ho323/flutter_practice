import 'package:flutter/material.dart';
import 'package:video_call/screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,    // 개발자 모드에서 debug 아이콘 없애기
      theme: ThemeData(
        fontFamily: 'NotoSans',
      ),
      home: HomeScreen(),
    ),
  );
}
