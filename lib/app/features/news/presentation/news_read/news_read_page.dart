import 'package:auto_route/annotations.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/button/cupertino_button.dart';
import 'package:english_project/app/features/news/presentation/news_read/viewmodel/news_read_cubit.dart';
import 'package:english_project/app/features/news/presentation/news_read/views/news_search_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../dimens.dart';

@RoutePage()
class NewsReadPage extends StatelessWidget {
  const NewsReadPage({
    super.key,
    required this.url,
    required this.choice,
  });

  final String url;
  final int choice;

  @override
  Widget build(BuildContext context) {
    debugPrint(url);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BlocProvider(
        create: (context) => NewsReadCubit(),
        child: BlocConsumer<NewsReadCubit, NewsReadState>(
          listener: (context, state) {
            if (state.word.isNotEmptyAndNotNull) {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.only(
                  topStart: Dimens.rad_circular_XL1,
                  topEnd: Dimens.rad_circular_XL1,
                )),
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: height * 0.8,
                    width: width,
                    child: NewsSearchBottomSheet(query: state.word ?? ''),
                  );
                },
              ).whenComplete(
                  () => context.read<NewsReadCubit>().removeSelect());
            }
          },
          builder: (context, state) {
            final cubit = context.read<NewsReadCubit>();
            final watch = context.watch<NewsReadCubit>();
            return Stack(
              children: [
                SafeArea(
                  child: Column(
                    children: [
                      InAppWebView(
                        implementation: WebViewImplementation.NATIVE,
                        onWebViewCreated: (controller) async {
                          cubit.webViewController = controller;
                          if (watch.flagBottom == true) {
                          } else if (choice == 0 && watch.flagBottom == false) {
                            controller.addJavaScriptHandler(
                              handlerName: 'onSelectionChange',
                              callback: (args) async {
                                cubit.flagBottom = true;
                                await cubit.selectAndPrintText(
                                    context, height, width);
                              },
                            );
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
                state.loading == true && choice == 1
                    ? Align(
                        alignment: Alignment.bottomRight,
                        child: CupertinoButtonEdit(
                          text: '🔍',
                          color: Colors.deepOrangeAccent,
                          onPressed: () async {
                            await cubit.selectAndPrintText(
                                context, height, width);
                          },
                        ),
                      )
                    : const SizedBox(
                        width: 0,
                        height: 0,
                      ),
              ],
            );
          },
        ),
      ),
    );
  }
}
