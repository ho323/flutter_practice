import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  PageController controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 4), (timer) {
      int currentPage = controller.page!.toInt();
      int nextPage = currentPage + 1;

      if (nextPage > 4) {
        nextPage = 0;
      }

      controller.animateToPage(
        nextPage,
        duration: Duration(milliseconds: 600),
        curve: Curves.linear,
      );
    });
  }

  // Timer가 계속 쌓이면 메모리를 많이 잡아먹을 수 있기 때문에 widget이 죽을때 timer도 죽게 설정
  @override
  void dispose() {
    controller.dispose(); // 모든 controller도 죽여야 한다
    if (timer != null) {
      timer!.cancel();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome을 통해 앱과 관련이 없는 상태바같은 것들을 바꿀 수 있다.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: PageView(
        controller: controller,
        children: [1, 2, 3, 4, 5]
            .map((e) => Image.asset(
                  'asset/img/image_$e.jpeg',
                  fit: BoxFit.cover,
                ))
            .toList(),
      ),
    );
  }
}
