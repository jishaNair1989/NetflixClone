import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/background_card.dart';
import '../widgets/main_title_ card.dart';
import 'number_title_card.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackgroundCard(),
                  MainTitleCard(
                    title: 'Released in the past year',
                  ),
                  KHeight,
                  MainTitleCard(
                    title: 'Trending Now',
                  ),
                  KHeight,
                  NumberTitleCard(),
                  KHeight,
                  MainTitleCard(
                    title: ' Tense Dramas',
                  ),
                  KHeight,
                  MainTitleCard(
                    title: 'South Indian Cinema',
                  ),
                  KHeight,
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 100,
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                'https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png',
                                width: 60,
                                height: 60,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                color: Colors.white,
                                size: 30,
                              ),
                              KWidth,
                              Container(
                                color: Colors.blue,
                                width: 30,
                                height: 30,
                              ),
                              KWidth,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'TV Shows',
                                style: kHomeTitleText,
                              ),
                              Text(
                                'Movies',
                                style: kHomeTitleText,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Categories',
                                    style: kHomeTitleText,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: kWhiteColor,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  : KHeight,
            ],
          ),
        );
      },
    ));
  }
}
