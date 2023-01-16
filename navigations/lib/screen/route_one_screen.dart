import 'package:flutter/material.dart';
import 'package:navigations/layout/main_layout.dart';
import 'package:navigations/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;

  const RouteOneScreen({
    this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(    // 안드로이드 홈에서 뒤로가기 했을때 앱이 종료하는 것을 방지
      onWillPop: () async{
        // return: true of false
        // true - pop 가능
        // false - pop 불가능

        // 특정 작업 실행
        final canPop = Navigator.of(context).canPop();
        return canPop;
      },
      child: MainLayout(
        title: 'Route One',
        children: [
          ElevatedButton(
            onPressed: () {
              print(Navigator.of(context).canPop());
            },
            child: Text('can pop'),
          ),
          Text(
            'arguments : ${number.toString()}',
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            child: Text('MaybePop'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(456);
            },
            child: Text('Pop'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => RouteTwoScreen(),
                  settings: RouteSettings(
                    arguments: 789,
                  ),
                ),
              );
            },
            child: Text('Push'),
          ),
        ],
      ),
    );
  }
}
