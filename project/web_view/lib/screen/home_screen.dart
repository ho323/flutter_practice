import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// http:// -
// https:// -

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://ho323.github.io';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Blog'),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){
            if(controller == null){
              print('null');
              return;
            }
            controller!.loadUrl(homeUrl);
          }, icon: Icon(
            Icons.home,
          ),)
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller){
          this.controller = controller;
        }, // on으로 시작하는 파라미터는 어떤 행동이 시작했을 때라는 의미
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,  // javascript 기능 사용
      ),
    );
  }
}
