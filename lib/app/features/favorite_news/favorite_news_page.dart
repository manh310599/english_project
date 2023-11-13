import 'package:auto_route/annotations.dart';
import 'package:english_project/app/features/favorite_news/presentation/view/favorite_body.dart';
import 'package:english_project/app/features/favorite_news/presentation/view/favorite_new_header.dart';
import 'package:english_project/gaps.dart';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class FavoriteNewsPage extends StatelessWidget {
  const FavoriteNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const FavoriteNewsHeader(),
          Gaps.vGap16,
          const FavoriteBody().expand()
        ],
      )),
    );
  }
}
