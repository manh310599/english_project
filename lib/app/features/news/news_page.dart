import 'package:auto_route/annotations.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/rounding_number.dart';
import 'package:english_project/app/common/widget/button/cupertino_button.dart';
import 'package:english_project/app/common/widget/button/cupertion_button_custom.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/features/news/data/api/news_update_api.dart';
import 'package:english_project/app/features/news/presentation/view/news_body.dart';
import 'package:english_project/app/features/news/presentation/view/news_catelogy.dart';
import 'package:english_project/app/features/news/presentation/view/news_header.dart';
import 'package:english_project/app/features/news/presentation/view/news_index_page.dart';
import 'package:english_project/app/features/news/presentation/viewmodel/news_cubit.dart';
import 'package:english_project/dimens.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
    );
  }
}
