import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 130,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/efhdIab688vcIm6r0JPKy4H2Ytf.jpg'),
          ),
        ),
      ),
    );
  }
}
