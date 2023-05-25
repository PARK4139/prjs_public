//더하기보다 곱하기로 성장하고 싶습니다.
// intellij sniffets
//   stful
//     StatefulWidget
//
//   stless
//     StatelessWidget sniffet

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:untitled/wiget/bottom_bar.dart';
import 'screen/home_screen.dart';
import 'wiget/CommonWigets.dart';

void main() => runApp(AreaCalculatingApp());

class AreaCalculatingApp extends StatefulWidget {
  const AreaCalculatingApp({Key? key}) : super(key: key);

  @override
  State<AreaCalculatingApp> createState() => _AreaCalculatingAppState();
}

class _AreaCalculatingAppState extends State<AreaCalculatingApp> {
  final Title = 'netflix service';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: Title,
      theme: ThemeData(
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Colors.black,
            onPrimary: Colors.redAccent,
            secondary: Colors.redAccent,
            onSecondary: Colors.redAccent,
            error: Colors.redAccent,
            onError: Colors.redAccent,
            background: Colors.redAccent,
            onBackground: Colors.redAccent,
            surface: Colors.redAccent,
            onSurface: Colors.redAccent),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: null,
            // physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              Container(
                child: const Center(
                  child: Text('foo`ti',
                      style: TextStyle(color: Colors.blueAccent)),
                ),
              ),
              Container(
                child: const Center(
                  child:
                      Text('foo', style: TextStyle(color: Colors.blueAccent)),
                ),
              ),
              Container(
                child: const Center(
                  child:
                      Text('foo', style: TextStyle(color: Colors.blueAccent)),
                ),
              ),
              Container(
                child: const Center(
                  child:
                      Text('foo', style: TextStyle(color: Colors.blueAccent)),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
