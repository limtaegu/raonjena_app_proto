import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 212, 225),
      appBar: AppBar(
        title: Image.asset(
          'assets/raonjenatitle.png',
          height: 60,
        ),
        backgroundColor: Color.fromARGB(255, 255, 182, 206),
        elevation: 0.0, // 높이
        centerTitle: true,
        //actions: 오른쪽 아이콘 넣기 leading: 왼쪽 아이콘 넣기
        /*    
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            debugPrint('menu button is clicked');
          },
        ),
        */
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.camera),
            onPressed: () {
              debugPrint('camera button is clicked');
            },
          ),
        ],
      ),
      // AppBar 영역

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              // 유저 프로필 박스
              currentAccountPicture: CircleAvatar(
                // 프로필에 동그라미 박스를 그릴 때 사용
                backgroundImage: AssetImage(
                    'assets/raonjenaprofile.jpeg'), // 동그라미 박스에 Asset 이미지를 가져와서 넣음
                backgroundColor: Colors.white, // 동그라미 박스의 배경색 설정
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/raonjenaReservation.png'),
                )
              ],
              accountName: Text('RAON'), // 프로필 이름
              accountEmail: Text('aka1997@naver.com'), // 프로필 이메일
              onDetailsPressed: () {
                // 추가정보 펼치기 버튼
                debugPrint('arrow is clicked');
              },
              decoration: BoxDecoration(
                // 프로필 박스의 색상, 크기, 곡률 등을 조정 하게 해줌
                color: Colors.red[200], // 프로필 박스 색상 설정
                borderRadius: BorderRadius.only(
                  // 프로필 창의 곡률 조정
                  bottomLeft: Radius.circular(40.0), //  왼쪽 아래 곡률 40도 조정
                  bottomRight: Radius.circular(40.0), // 오른쪽 아래 곡률 40도 조정
                ),
              ),
            ),
            ListTile(
              // 프로필 아래 메뉴 칸
              leading: Icon(
                // 왼쪽에 아이콘 생성
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                debugPrint('Home is Clicked');
              },
              trailing: Icon(Icons.add), // + 버튼 추가
            ),
            ListTile(
              // 프로필 아래 메뉴 칸
              leading: Icon(
                // 왼쪽에 아이콘 생성
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                debugPrint('Setting is Clicked');
              },
              trailing: Icon(Icons.add), // + 버튼 추가
            ),
            ListTile(
              // 프로필 아래 메뉴 칸
              leading: Icon(
                // 왼쪽에 아이콘 생성
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                debugPrint('Q&A is Clicked');
              },
              trailing: Icon(Icons.add), // + 버튼 추가
            ),
          ],
        ),
      ), // 왼쪽에 Drawer 생성

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // start 시작점 정렬
          children: <Widget>[
            Divider(
              // Divider는 선을 그려주는 위젯
              height: 60, // 위와 아래 높이 위 30 아래 30 픽셀을 띄어 놓겠다는 뜻
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
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/raonjenatitle.png'),
                radius: 40,
                backgroundColor: Colors.pink,
              ),
            )
          ],
        ),
      ),
    );
  }
}
