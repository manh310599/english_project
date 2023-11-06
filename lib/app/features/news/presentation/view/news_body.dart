import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/common/widget/button/cupertion_button_custom.dart';
import 'package:english_project/app/features/news/presentation/viewmodel/news_cubit.dart';
import 'package:english_project/font_size.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NewsBody extends StatelessWidget {
  const NewsBody({super.key, required this.state});

  final NewsState state;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return CupertinoButtonCustom(
          color: Vx.white,
          click: () async {
            context.pushRoute(NewsReadRoute(
              url: state.news?.articles![state.min! + index].url ?? ''!,
              image: state.news!.articles![state.min! + index].urlToImage ?? '',
              auth: state.news!.articles![state.min! + index].author ?? '',
              title: state.news!.articles![state.min! + index].title ?? '',
            ));
          },
          child: Row(
            children: [
              state.news!.articles![state.min! + index].urlToImage.isEmptyOrNull
                  ? Image.asset(
                      'assets/images/logo.png',
                      height: 100,
                      width: 100,
                    )
                  : Image.network(
                      state.news!.articles![state.min! + index].urlToImage ??
                          'https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/images/logo.png',
                          height: 100,
                          width: 100,
                        );
                      },
                    ),
              Gaps.hGap8,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  state.news?.articles?[state.min! + index].title?.text.bold
                          .black
                          .size(small)
                          .make() ??
                      'title'.text.bold.black.make(),
                  Gaps.vGap12,
                  state.news?.articles?[state.min! + index].description?.text
                          .black
                          .size(small)
                          .maxLines(3)
                          .ellipsis
                          .make() ??
                      ' intro'.text.black.size(small).make(),
                ],
              ).expand()
            ],
          ).p8(),
        );
      },
      itemCount: state.news?.articles!.isNotEmpty == true
          ? ((state.news!.articles!.length - state.min!.toInt()) >= 10
              ? 10
              : (state.news!.articles!.length - state.min!.toInt()))
          : 0,
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) {
        return Gaps.vGap16;
      },
    ).px16();
  }
}
