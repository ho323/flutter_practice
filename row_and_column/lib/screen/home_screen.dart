import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          // width: MediaQuery.of(context).size.width,   //너비 전체 검정 차지
          child: Column(
            // MainAxisAlignment - 주축 정렬
            // start - 시작
            // ent - 끝
            // center - 가운데
            // spaceBetween 위젯과 위젯 사이가 동일하게 배치
            // spaceEvenly - 위젯을 같은 간격으로 배치하지만 끝과 끝에도 위젯이 빈 간격
            // spaceAround - spaceEvenly + 끝과 끝의 간격의 1/2
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            // CrossAxisAlignment - 반대축 정렬 (기본값: center)
            // stretch - 최대한으로 늘린다.

            // MainAxisSize - 주축 크기 (기본값: max)
            // max - 최대
            // min - 최소

            children: [
              // Expanded / Flexible - row 나 column 안의 children 안에만 사용

              // Expanded - 최대한 남은 사이즈를 모두 차지
              // 여러개 일땐 같은 비율로 나눠서 차지

              // Flexible - 비율만큼 공간 차지하고 남는 공간은 버린다.

              // flex - 나눠 갖는 비율
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.red,
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.green,
                    width: 50.0,
                    height: 50.0,
                  ),
                ],
              ),
              Container(
                color: Colors.orange,
                width: 50.0,
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.red,
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.green,
                    width: 50.0,
                    height: 50.0,
                  ),
                ],
              ),
              Container(
                color: Colors.green,
                width: 50.0,
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
