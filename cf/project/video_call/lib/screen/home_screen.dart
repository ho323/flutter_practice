import 'package:flutter/material.dart';
import 'package:video_call/screen/cam_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: _Logo(),
            ),
            Expanded(
              child: _Image(),
            ),
            Expanded(
              child: _Button(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.green[300]!,
              blurRadius: 12.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.videocam,
                color: Colors.white,
                size: 40.0,
              ),
              SizedBox(
                width: 12.0,
              ),
              Text(
                'LIVE',
                style: TextStyle(
                    color: Colors.white, fontSize: 30.0, letterSpacing: 4.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('asset/img/home_img.png'),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => CamScreen(),
              ),
            );
          },
          child: Text('입장하기'),
        ),
      ],
    );
  }
}
