import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../widgets/custom_button_widget.dart';
import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text('FEB',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kGreyColor)),
              Text(
                '11',
                style: TextStyle(
                    letterSpacing: 4,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'TALL GIRL 2',
                      style: TextStyle(
                        fontSize: 35,
                        letterSpacing: -5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: const [
                        CustomButtonWidget(
                          title: 'Remind Me',
                          icon: Icons.add_alert,
                          IconSize: 20,
                          TextSize: 12,
                        ),
                        CustomButtonWidget(
                          title: 'Info',
                          icon: Icons.info,
                          IconSize: 20,
                          TextSize: 12,
                        ),
                        KWidth,
                      ],
                    )
                  ],
                ),
              ),
              KHeight,
              const Text('Coming on Friday'),
              KHeight20,
              Row(
                children: [
                  Image.network(
                    'https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png',
                    width: 20,
                    height: 20,
                  ),
                  const Text(
                    'FILM',
                    style: TextStyle(fontSize: 6, letterSpacing: 3),
                  ),
                ],
              ),
              const Text(
                'Tall Girl 2',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Landing the lead in the school musical is a \ndream come true for Jodi, until the pressure \nsend her confidence -- and her relationship --\n into a tailspain.',
                style: TextStyle(color: kGreyColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
