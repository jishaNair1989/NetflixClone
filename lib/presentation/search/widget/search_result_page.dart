import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widget/title.dart';

import '../../widgets/main_card.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/lHe8iwM4Cdm6RSEiara4PN8ZcBd.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: 'Movies & TV'),
        KHeight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1 / 1.4,
            children: List.generate(20, (index) => const MainCard()),
          ),
        ),
      ],
    );
  }
}
