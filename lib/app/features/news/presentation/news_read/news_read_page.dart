import 'package:auto_route/annotations.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/button/cupertino_button.dart';
import 'package:english_project/app/features/news/presentation/news_read/viewmodel/news_read_cubit.dart';
import 'package:english_project/app/features/news/presentation/news_read/views/news_search_bottom_sheet.dart';
import 'package:english_project/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class NewsReadPage extends StatelessWidget {
  NewsReadPage({
    super.key,
    required this.url,
    required this.choice,
  });

  final String url;
  final int choice;
  bool checkSelect = false;

  @override
  Widget build(BuildContext context) {
    debugPrint(url);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => NewsReadCubit(),
      child: BlocBuilder<NewsReadCubit, NewsReadState>(
        builder: (context, state) {
          final cubit = context.read<NewsReadCubit>();
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  InAppWebView(
                    onWebViewCreated: (controller) {
                      cubit.webViewController = controller;
                      if (choice == 0) {
                        if (checkSelect == false) {
                          checkSelect = true;
                          controller.addJavaScriptHandler(
                            handlerName: 'onSelectionChange',
                            callback: (args) async {
                              String? check = await cubit.selectAndPrintText();
                              if (context.mounted &&
                                  check != null &&
                                  args.isNotEmpty &&
                                  check.isNotEmptyAndNotNull ) {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusDirectional.only(
                                    topStart: Dimens.rad_circular_XL1,
                                    topEnd: Dimens.rad_circular_XL1,
                                  )),
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
                                      height: height * 0.6,
                                      width: width,
                                      child: NewsSearchBottomSheet(
                                          query: check ?? ''),
                                    );
                                  },
                                ).whenComplete(() => (checkSelect = false));

                              }
                            },
                          );
                        }
                      }
                    },
                    onLoadStop: (controller, url) {
                      if (choice == 1) {
                        cubit.loadedWeb(1);
                      } else if (choice == 0) {
                        cubit.loadedWeb(0);
                        controller.evaluateJavascript(source: '''
                              document.addEventListener('selectionchange', function() {
                                var selectedText = window.getSelection().toString();
                                window.flutter_inappwebview.callHandler('onSelectionChange', selectedText);
                              });
                            ''');
                      }
                    },
                    initialUrlRequest: URLRequest(url: Uri.parse(url)),

                  ).expand(),
                  state.bannerAd != null
                      ? SizedBox(child: AdWidget(ad: state.bannerAd!)).h(60)
                      : const SizedBox(),
                ],
              ),
            ),
            floatingActionButton: state.loading == true && choice == 1
                ? CupertinoButtonEdit(
                    text: '🔍',
                    color: Colors.deepOrangeAccent,
                    onPressed: () async {
                      final check = await cubit.selectAndPrintText();
                      if (context.mounted && check != null) {
                        showModalBottomSheet(
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
                              child: NewsSearchBottomSheet(query: check ?? ''),
                            );
                          },
                        );
                      }
                    },
                  )
                : const SizedBox(
                    width: 0,
                    height: 0,
                  ),
          );
        },
      ),
    );
  }
}
