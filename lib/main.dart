import 'body.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //
      title: "라온제나 앱",
      theme: ThemeData(
          primarySwatch: Colors
              .blue), // ThemeData: material 디자인에서 제공하는 모든 색상을 사용하기 위해 사용하는 함수 primarySwatch: 미리 제공되는 견 색상을 뜻한다. 색상 디폴트 값
      home: MyHomePage(),
    );
  }
}
