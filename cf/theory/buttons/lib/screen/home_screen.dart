import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                // Material State
                //
                // hovered - 호버링 상태 (마우스 커서를 올려놓은 상태) (모바일 x)
                // focused - 포커스 됐을때 (텍스트 필드)
                // pressed - 눌렸을때 (o)
                // dragged - 드래그 됐을때
                // selected - 선택됐을때 (체크박스, 라디오 버튼)
                // scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을때
                // disabled - 비활성화 됐을때 (o)
                // error - 에러상태
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white;
                    }
                    return Colors.red;
                  },
                ),
                padding: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return EdgeInsets.all(100.0);
                    }
                    return EdgeInsets.all(20.0);
                  },
                ),
              ),
              child: Text('ButtonStyle'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // 메인 컬러 (primary)
                backgroundColor: Colors.red,
                // 글자 및 애니메이션 컬러 (onPrimary)
                foregroundColor: Colors.black,
                shadowColor: Colors.green,
                // 3D 입체감의 높이
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
              child: Text('ElevatedButton'),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                // backgroundColor: Colors.yellow, (사용은 가능)
                //  elevation: 10.0,
              ),
              onPressed: () {},
              child: Text('OutlinedButton'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.brown,
                // backgroundColor: Colors.blue,
                // elevation: 10.0,
              ),
              onPressed: () {},
              child: Text('TextButton'),
            ),
          ],
        ),
      ),
    );
  }
}
