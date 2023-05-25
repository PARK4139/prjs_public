//더하기보다 곱하기로 성장하고 싶습니다.
// intellij sniffets
//   stful
//     StatefulWidget
//
//   stless
//     StatelessWidget sniffet


import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'wiget/CommonWigets.dart';

void main() => runApp(__________()); // 앱 실행


class __________ extends StatefulWidget {
  @override
  __________State createState() => __________State();
}

class __________State extends State<__________> {
  final foo = 'foo'; // final은 상수를 만드는 키워드 입니다.
  final Title = 'MaterialApp.title';
  final wordPair = WordPair.random();
  int counter = 0;
  String imageURL =
      "https://images.pexels.com/photos/912110/pexels-photo-912110.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  var isSelected = false;
  var icon = Icons.favorite_border;

  void increaseCounter() {
    setState(() {
      counter++;
    });
  }

  void decreaseCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp, Google의 기본디자인모델.
      debugShowCheckedModeBanner: false, // 화면에 debug 표시 안보이게 함
      title: Title,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        //  MaterialApp 의 뼈대
        appBar: AppBar(
          title: const Text(
            // 노란 지그재그 밑줄은 const 로 해결
            "appBar.title`ti",
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(2.0),
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // 위젯 간 공간 = 일정
                  children: <Widget>[
                    Text(
                      "$counter",
                      style: const TextStyle(
                          color: Colors.greenAccent, fontSize: 15.0),
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.all(2.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // 위젯 간 공간 = 일정
                  children: <Widget>[
                    ElevatedButtonExample(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.all(2.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // 위젯 간 공간 = 일정
                  children: <Widget>[
                    // WigetRandomPairWords(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.all(2.0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // 위젯 간 공간 = 일정
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.account_circle_rounded),
                      color: Colors.white,
                      onPressed: null,
                    ),
                  ],
                ),
              ),
              Container(
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,// 위젯 간 공간 = 일정
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(Icons.android, color: Colors.amber),
                    Icon(Icons.send, color : Colors.blueAccent),
                    Icon(Icons.abc, color : Colors.blueAccent),
                    Icon(Icons.g_mobiledata, color : Colors.blueAccent),
                    Icon(Icons.abc_sharp, color : Colors.blueAccent),
                    Icon(Icons.abc_outlined, color : Colors.blueAccent),
                    Icon(Icons.ac_unit_rounded, color : Colors.blueAccent),
                    Icon(Icons.access_alarm, color : Colors.blueAccent),
                    Icon(Icons.abc_sharp, color : Colors.blueAccent),
                    Icon(Icons.access_alarms_rounded, color : Colors.blueAccent),
                    Icon(Icons.ac_unit_sharp, color : Colors.blueAccent),
                    Icon(Icons.account_circle_rounded, color : Colors.blueAccent),
                  ],
                ),
              ),
              Container(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                        children: <Widget>[
                          // Image.network(imageURL),
                          // Image.network(imageURL),
                          // Image.network(imageURL),
                        ]
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text('body.child.Text'),
                    Text(foo),
                    Text("$counter"),
                    Text(wordPair.asPascalCase),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButtonExample(),
                    TextButtonExample(),
                    TextButtonExample2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

