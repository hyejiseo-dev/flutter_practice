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
          MyHomePage(), //가장 처음 실행되는 부분!(변하는 부분이 있다면 StatefulWidget, 글자만 출력할거면 StatelessWidget)
    );
  }
}

class MyHomePage extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Scaffold = 발판을 만들다 라는 의미로 다양한 요소들을 배치하게 해주는 빈 도화지 기능(어떤 요소를 배치하기 위함)
    return Scaffold(
      appBar: AppBar(
        title: Text('First App'),
      ),
      body: Center(
        //모든 요소를 가운데 정렬
        child: Column(
          //모든 요소를 세로로 배치
          children: <Widget>[
            //위젯을 여러개 배치하기 위함
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
          ],
        ),
      ),
    );
  }
}
