import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('라온제나')),
      body: Center(
        child: Column(
          children: [
            Text("Home"),
            Text("Reservation"),
            Text("Support"),
            Text("Profile"),
          ],
        ), // Column 위젯은 세로로 배치할 때 사용한다.
      ),
    );
  }
}
