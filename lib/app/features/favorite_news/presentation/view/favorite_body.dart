// import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/common/widget/button/cupertion_button_custom.dart';
import 'package:english_project/app/features/favorite_news/presentation/viewmodel/favorite_news_cubit.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../all_file/all_file.dart';
import '../../../../../font_size.dart';

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteNewsCubit()..getFavoriteNews(),
      child: BlocBuilder<FavoriteNewsCubit, FavoriteNewsState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              await context.read<FavoriteNewsCubit>().getFavoriteNews();
            },
            child: state.news?.isNotEmpty == true
                ? ListView.separated(
                    itemBuilder: (context, index) {
                      return CupertinoButtonCustom(
                        color: Vx.white,
                        click: () async {
                          context.pushRoute(NewsReadRoute(
                              url: state.news?[index]?.url ?? ''));
                        },
                        press: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.warning,
                            title:
                                'Bạn có chắc muốn xóa bài báo mà bạn yêu thích không ?',
                            btnOkOnPress: () {
                                context.read<FavoriteNewsCubit>().deleteFavoriteNews(state.news![index]!.id!);
                            },
                            btnCancelOnPress: () {},
                          ).show();
                        },
                        child: Row(
                          children: [
                            Image.network(
                              state.news?[index]?.image ?? '',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                              errorBuilder: (context, error, stackTrace) {
                                return Image.asset(
                                  'assets/images/logo.png',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.fill,
                                );
                              },
                            ),
                            Gaps.hGap8,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                state.news?[index]?.title?.text.black.bold
                                        .size(small)
                                        .make() ??
                                    'title'.text.bold.black.make(),
                                Gaps.vGap12,
                                state.news?[index]?.description?.text.black
                                        .size(small)
                                        .maxLines(3)
                                        .make() ??
                                    ' content'.text.black.size(small).make(),
                              ],
                            ).expand()
                          ],
                        ).p8(),
                      );
                    },
                    itemCount: state.news?.length ?? 0,
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) {
                      return Gaps.vGap16;
                    },
                  )
                : Center(
                    child: Column(
                      children: [
                        "Chưa có bài báo yêu thích trong kho dữ liệu"
                            .text
                            .make(),
                        CupertinoButtonCustom(
                          child: 'tải lại'.text.make(),
                          click: () async {
                            await context.read<FavoriteNewsCubit>().getFavoriteNews();
                          },
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    ).px16();
  }
}
