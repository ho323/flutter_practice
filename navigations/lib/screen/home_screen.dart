import 'package:flutter/material.dart';
import 'package:navigations/layout/main_layout.dart';
import 'package:navigations/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Home Screen',
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => RouteOneScreen(),
              ),
            );
          },
          child: Text('Push'),
        ),
      ],
    );
  }
}
