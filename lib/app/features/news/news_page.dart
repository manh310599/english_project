import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/features/news/data/api/news_update_api.dart';
import 'package:english_project/app/features/news/presentation/view/news_body.dart';
import 'package:english_project/app/features/news/presentation/view/news_catelogy.dart';
import 'package:english_project/app/features/news/presentation/view/news_header.dart';
import 'package:english_project/app/features/news/presentation/view/news_index_page.dart';
import 'package:english_project/app/features/news/presentation/viewmodel/news_cubit.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../app_route/app_route.gr.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsUpdateApi newsUpdateApi = NewsUpdateApi();
    newsUpdateApi.getNewsUpdate();

    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => NewsCubit()..getNewsUpdate(),
          child: BlocBuilder<NewsCubit, NewsState>(
            builder: (context, state) {
              return Column(
                children: [
                  NewsHeader(state: state),
                  NewsType(state: state),
                  SizedBox(
                      child: NewsBody(
                    state: state,
                  )).expand(),
                  NewsIndexPage(state: state),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AwesomeDialog(
            context: context,
            btnCancelText: 'Tra từ',
            btnOkText: "Tra đoạn",
            title: "Chọn kiểu đọc theo nhiều cách",

            btnOkOnPress: () {
              context.pushRoute(NewsReadRoute(
                url: "https://pub.dev/packages/google_mobile_ads/example",
                choice: 1,
              ));
              FocusManager.instance.primaryFocus?.unfocus();
            },
            btnCancelOnPress: () {
              context.pushRoute(NewsReadRoute(
                url: 'https://pub.dev/packages/google_mobile_ads/example',
                choice: 0,
              ));
              FocusManager.instance.primaryFocus?.unfocus();
            },
          ).show();
        },
        backgroundColor: Colors.purpleAccent,
        child: const Icon(Icons.web_rounded),
      ),
    );
  }
}
