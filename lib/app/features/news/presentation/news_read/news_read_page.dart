import 'package:auto_route/annotations.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/features/news/presentation/news_read/viewmodel/news_read_cubit.dart';
import 'package:english_project/app/features/news/presentation/news_read/views/news_search_bottom_sheet.dart';
import 'package:english_project/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class NewsReadPage extends StatelessWidget {
  const NewsReadPage(
      {super.key,
      required this.url,
      required this.image,
      required this.auth,
      required this.title});

  final String url;
  final String image;
  final String auth;
  final String title;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BlocProvider(
        create: (context) => NewsReadCubit()..setPageNews(url, context),
        child: BlocBuilder<NewsReadCubit, NewsReadState>(
          builder: (context, state) {
            return SafeArea(
              child: Column(
                children: [
                  InAppWebView(
                    initialUrlRequest: URLRequest(url: Uri.parse(url)),
                    initialOptions: InAppWebViewGroupOptions(
                        crossPlatform: InAppWebViewOptions(
                      contentBlockers: [state.contentBlocker!],
                    )),
                  ).expand(),
                  EditText(
                    preIcon: const Icon(Icons.cleaning_services_rounded),
                    hinText: 'Tìm kiếm',
                    icon: const Icon(Icons.search),
                    search: (data) {
                      showBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                          topStart: Dimens.rad_circular_XL1,
                          topEnd: Dimens.rad_circular_XL1,
                        )),
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: height * 0.6,
                            width: width,
                            child: NewsSearchBottomSheet(query: data ?? ''),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
