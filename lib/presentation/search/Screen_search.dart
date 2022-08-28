import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widget/search_idle.dart';

import '../../application/search/search_bloc.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon:
                    const Icon(CupertinoIcons.search, color: Colors.grey),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.white,
                ),
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  BlocProvider.of<SearchBloc>(context).add(
                    SearchMovie(movieQuery: value),
                  );
                },
              ),
              KHeight,
              const Expanded(child: SearchIdleWidget()),
              //const Expanded(child: SearchIdleWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
