import 'package:flutter/material.dart';
import 'package:untitled/wiget/bottom_bar.dart';

import 'screens/home_screen.dart';
import 'screens/search_screen.dart';

void main() => runApp(NetflixApp());

class NetflixApp extends StatefulWidget {
  const NetflixApp({Key? key}) : super(key: key);

  @override
  State<NetflixApp> createState() => _NetflixAppState();
}

class _NetflixAppState extends State<NetflixApp> {
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
        length: 4,//Controller's length property (4) does not match the number of children (3) present in TabBarView's children property.
        child: Scaffold(
          body: TabBarView(
            physics: null,
            // physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              ScreenHome(),
              ScreenSearch(),
              Container(
                child: const Center(
                  child:
                  Text('foo`ti', style: TextStyle(color: Colors.blueAccent)),
                ),
              ),
              Container(
                child: const Center(
                  child:
                  Text('foo`ti', style: TextStyle(color: Colors.blueAccent)),
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
