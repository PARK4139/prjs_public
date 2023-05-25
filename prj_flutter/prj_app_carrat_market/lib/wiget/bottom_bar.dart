import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 50,
        child: const TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 18,
              ),
              child: Text('홈', style: TextStyle(fontSize: 9)),
            ),
            Tab(
              icon: Icon(
                Icons.article_outlined,
                size: 18,
              ),
              child: Text('동네생활', style: TextStyle(fontSize: 9)),
            ),
            Tab(
              icon: Icon(
                Icons.pin_drop_outlined,
                size: 18,
              ),
              child: Text('내 근처', style: TextStyle(fontSize: 9)),
            ),
            Tab(
              icon: Icon(
                Icons.chat_bubble_outline_rounded,
                size: 18,
              ),
              child: Text('채팅', style: TextStyle(fontSize: 9)),
            ),
            Tab(
              icon: Icon(
                Icons.perm_identity_outlined,
                size: 18,
              ),
              child: Text('나의 당근', style: TextStyle(fontSize: 9)),
            ),
          ],
        ),
      ),
    );
  }
}
