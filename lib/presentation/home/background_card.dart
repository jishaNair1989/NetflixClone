import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/constants.dart';
import '../widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage(kMainImage)),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(
                  title: 'My List',
                  icon: Icons.add,
                ),
                _playButton(),
                const CustomButtonWidget(
                  title: 'Info',
                  icon: Icons.info,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

TextButton _playButton() {
  return TextButton.icon(
      onPressed: () {},
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhiteColor)),
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
        color: kBlackColor,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(fontSize: 25, color: kBlackColor),
        ),
      ));
}
