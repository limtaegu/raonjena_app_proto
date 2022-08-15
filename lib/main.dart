import 'package:flutter/material.dart';
import 'body.dart';

void main() {
  runApp(MyApp()); // MyApp은 custom widget임으로 이름을 바꿔써도 됩니다.
}
// main()이나 runApp()은 어떤 기능을 담당하는 함수 / MyApp()은 위젯입니다. main이나 runApp 같은 함수는 소문자로 시작하고  MyApp같은 위젯이나 클래스는 대문자로 시작합니다.(가독성을 위해서) 이를 CamelCase라고 합니다.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "라온제나 앱",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}
