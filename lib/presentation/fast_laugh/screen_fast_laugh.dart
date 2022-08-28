import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/fast_laugh/video_list_item.dart';

class ScreenFastlaugh extends StatelessWidget {
  const ScreenFastlaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(30, (index) {
            return VideoListItem(
              index: index,
            );
          }),
        ),
      ),
    );
  }
}
