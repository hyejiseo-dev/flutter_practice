import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //디버그 표시 없애기
      title: 'BBANTO',
      home:
          Grade(), //가장 처음 실행되는 부분!(변하는 부분이 있다면 StatefulWidget, 글자만 출력할거면 StatelessWidget)
    );
  }
}

class Grade extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Scaffold = 발판을 만들다 라는 의미로 다양한 요소들을 배치하게 해주는 빈 도화지 기능(어떤 요소를 배치하기 위함)
    return Scaffold(
        backgroundColor: Colors.amber[800],
        appBar: AppBar(
          title: Text('BBANTO'),
          centerTitle: true, //타이틀을 가운데 정렬
          backgroundColor: Colors.amber[700],
          elevation: 0.0, //앱바가 뜨는 것을 없애줌
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //텍스트 시작점 정렬
            children: <Widget>[
              Center(
                //이미지를 넣기
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/happylion.jpeg'),
                  radius: 60.0,
                ),
              ),
              //구분선 지정
              Divider(
                height: 60.0,
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30, //위, 아래로 부터 30px 떨어진 상태
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                //텍스트 사이에 공간을 주기 위해 사용하는 것
                height: 10.0,
              ),
              Text(
                'BBANTO',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                //텍스트 사이에 공간을 주기 위해 사용하는 것
                height: 30.0,
              ),
              Text(
                'BBANTO POWER LEVEL',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                //텍스트 사이에 공간을 주기 위해 사용하는 것
                height: 10.0,
              ),
              Text(
                '14',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'using lightsaber',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'face hero tattoo',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'fire flames',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                  )
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/shamelion.png'),
                  radius: 40.0,
                  backgroundColor: Colors.amber[800], //투명배경 처럼 배경과 같은 색으로 맞추기
                ),
              )
            ],
          ),
        ));
  }
}
