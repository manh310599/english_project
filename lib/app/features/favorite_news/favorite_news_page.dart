import 'package:auto_route/annotations.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:english_project/app/features/favorite_news/presentation/view/favorite_body.dart';
import 'package:english_project/app/features/favorite_news/presentation/view/favorite_new_header.dart';
import 'package:english_project/app/features/favorite_news/presentation/viewmodel/favorite_news_cubit.dart';
import 'package:english_project/gaps.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../all_file/all_file.dart';

@RoutePage()
class FavoriteNewsPage extends StatelessWidget {
  const FavoriteNewsPage({super.key, required this.premium});

  final bool premium;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        AwesomeDialog(
          context: context,
          title: 'Bạn có muốn thoát ứng dung',
          btnOkText: 'Thoát',
          btnCancelText: 'Ở lại',
          btnCancelOnPress: () =>  false,
          btnOkOnPress: () => SystemNavigator.pop(),
        ).show();
        return false;
      },
      child: BlocProvider(
        create: (context) => FavoriteNewsCubit()..getFavoriteNews(),
        child: Scaffold(
          body: SafeArea(
              child: Column(
                children: [
                  const FavoriteNewsHeader(),
                  Gaps.vGap16,
                   FavoriteBody(premium: premium,).expand()
                ],
              )),
        ),
      ),
    );
  }
}
