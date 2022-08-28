import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/everyones_watching_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';
import '../../core/constants.dart';
import '../widgets/custom_button_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: const Text(
                'New & Hot',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                KWidth,
                Container(
                  color: Colors.blue,
                  width: 30,
                  height: 20,
                ),
              ],
              bottom: TabBar(
                isScrollable: true,
                labelColor: kBlackColor,
                unselectedLabelColor: kWhiteColor,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(color: kWhiteColor, borderRadius: kRadius20),
                tabs: const [
                  Tab(
                    text: '🍿Coming soon',
                  ),
                  Tab(
                    text: "👀Everyone's Watching",
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              _buildComingSoon(context),
              _buildEveryonesWatching(context),
            ],
          )),
    );
  }
}

Widget _buildComingSoon(BuildContext context) {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      return ComingSoonWidget();
    },
  );
}

Widget _buildEveryonesWatching(BuildContext context) {
  return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return EveryOnesWatching();
      });
}
