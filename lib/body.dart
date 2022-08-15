import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라온제나 앱'),
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      // AppBar

      body: Padding(
        padding:
            EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0), // 왼쪽, 위, 오른쪽, 아래 간격을 뜻함
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('홈'),
            Text('예약'),
            Text('문의'),
            Text('마이페이지'),
          ],
        ),
      ),
    );
  }
}
