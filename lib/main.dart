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
      title: 'First app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:
          MyCard(), //가장 처음 실행되는 부분!(변하는 부분이 있다면 StatefulWidget, 글자만 출력할거면 StatelessWidget)
    );
  }
}

class MyCard extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Scaffold = 발판을 만들다 라는 의미로 다양한 요소들을 배치하게 해주는 빈 도화지 기능(어떤 요소를 배치하기 위함)
    return Scaffold(
        appBar: AppBar(
          title: Text('BBANTO'),
          centerTitle: true, //타이틀을 가운데 정렬
          backgroundColor: Colors.redAccent,
          elevation: 0.0, //앱바가 뜨는 것을 없애줌
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('hello'),
              Text('hello'),
              Text('hello'),
            ],
          ),
        ));
  }
}
