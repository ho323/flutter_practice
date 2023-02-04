import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // constructor에 const 사용하면 build 할 때 기억하고 그대로 사용 -> 리소스 절약
            const TestWidget(label: 'test1'),
            TestWidget(label: 'test2'),
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text('빌드!'),
            ),
          ],
        ),
      ),
    );
  }
}

class TestWidget extends StatelessWidget {
  final String label;

  const TestWidget({
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('$label build 실행!');

    return Container(
      child: Text(label),
    );
  }
}
