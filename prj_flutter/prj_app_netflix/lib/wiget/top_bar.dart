import 'package:flutter/material.dart';

class top_bar extends StatelessWidget {
  const top_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Image.network(
            'images/Netflix_logo.png',
            fit: BoxFit.contain,
            height: 27, //50,//27
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Text(
            'TV 프로그램',
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Text(
            '영화',
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Text(
            '내가 찜한 콘텐츠',
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    ));
  }
}
