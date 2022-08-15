import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 194, 214),
      appBar: AppBar(
        title: Text('라온제나 앱'),
        backgroundColor: Color.fromARGB(255, 255, 182, 206),
        elevation: 0.0,
      ),
      // AppBar

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // start 시작점 정렬
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/raonjenatitle.png'), // 삽입 할 이미지 경로 입력
                radius: 60, // 이미지의 크기
              ),
            ),
            Divider(
              // Divider는 선을 그려주는 위젯
              height: 60, // 높이
              color: Colors.grey[850],
              thickness: 0.5, // 선의 두께를 지정해주는 속성
              endIndent: 5, // Divider 선이 끝에서부터 얼마나 떨어져 있어야 되는지 알려주는 속성,
            ),
            Text(
              "홈",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "예약",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "문의",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '마이페이지',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'using lightsaber',
                  style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'using lightsaber',
                  style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'using lightsaber',
                  style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
