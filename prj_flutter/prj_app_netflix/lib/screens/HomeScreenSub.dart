import 'package:flutter/material.dart';

import '../wiget/movie_poster_slider.dart';
import '../wiget/top_bar.dart';

class HomeScreenSub extends StatelessWidget {
  const HomeScreenSub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 130,
        // height: 130,
        // padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
        // margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        color: Colors.black,
        child: Column(
          children: [
            Container(

              color: Colors.black,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  top_bar(),
                ],
              ),
            ),
            ImageCarouselSlider(),
          ],
        ));
  }
}
