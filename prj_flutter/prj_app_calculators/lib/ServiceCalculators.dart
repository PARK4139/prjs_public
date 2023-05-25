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

void main() => runApp(AreaCalculatingApp());

class AreaCalculatingApp extends StatefulWidget {
  const AreaCalculatingApp({Key? key}) : super(key: key);

  @override
  State<AreaCalculatingApp> createState() => _AreaCalculatingAppState();
}

class _AreaCalculatingAppState extends State<AreaCalculatingApp> {
  final Title = '평형 계산기';
  final ment = '"평" 이란 '
      '한국에서 사용하는 집의 면적에 대한 단위입니다.'
      '평형 계산기는 "평"과"㎡" 간 단위변환 한 결과를 제공 '
      '해주는 서비스를 제공합니다 ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: Title,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(Title),
        ),
        body: Container(
          padding: const EdgeInsets.all(2.0),
          margin: const EdgeInsets.all(2.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    const Icon(Icons.android, color: Colors.amber),
                    Text(
                      "$ment",
                      style: const TextStyle(
                          color: Colors.greenAccent, fontSize: 10.0),
                    ),
                    unit_area1(),
                    unit_area2(),
                    Container(
                      child: const Column(
                        children: <Widget>[
                          // Icon(Icons.read_more)
                          Icon(Icons.arrow_downward_outlined),
                          Icon(Icons.calculate_rounded),
                          Icon(Icons.arrow_downward_outlined),
                        ],
                      ),
                    ),
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
