import 'package:flutter/material.dart';

import '../model/model_movie.dart';
import 'HomeScreenSub.dart';
import 'SearchScreenSub.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  List<Movie> movies = [
    //movies dummy data   :  사랑의 불시착
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false,
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SearchScreenSub();
  }
}
