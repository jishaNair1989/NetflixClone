import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/video_widget.dart';

class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Friends',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Text(
          'This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfalls of work, life and love in 1990s Manhattan ',
          style: TextStyle(color: kGreyColor),
        ),
        KHeight50,
        VideoWidget(),
        KHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              'https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png',
              width: 70,
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CustomButtonWidget(
                  title: 'Share',
                  icon: Icons.share,
                  IconSize: 25,
                  TextSize: 16,
                ),
                kWidth20,
                CustomButtonWidget(
                  title: 'My List',
                  icon: Icons.add,
                  IconSize: 25,
                  TextSize: 16,
                ),
                kWidth20,
                CustomButtonWidget(
                  title: 'Play',
                  icon: Icons.play_arrow,
                  IconSize: 25,
                  TextSize: 16,
                ),
                kWidth20,
              ],
            ),
          ],
        )
      ],
    );
  }
}
