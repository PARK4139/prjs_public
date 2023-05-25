import 'package:flutter/material.dart';

import '../wiget/movie_poster_slider.dart';
import '../wiget/top_bar.dart';
class SearchScreenSub extends StatefulWidget {
  const SearchScreenSub({Key? key}) : super(key: key);

  @override
  State<SearchScreenSub> createState() => _SearchScreenSubState();
}

class _SearchScreenSubState extends State<SearchScreenSub> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(child: Center(child: Text("검색"),),);
  }
}
