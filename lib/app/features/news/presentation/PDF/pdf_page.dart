import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/features/news/presentation/PDF/viewmodel/pdf_cubit.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../../all_file/all_file.dart';
import '../../../../../dimens.dart';
import '../../../../common/widget/button/cupertino_button.dart';
import '../../../../common/widget/news_search_bottom_sheet.dart';

@RoutePage()
class PDFPage extends StatelessWidget {
  const PDFPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => PdfCubit()..loadPath(),
      child: BlocConsumer<PdfCubit, PdfState>(
        listener: (context, state) {
          if (state.pdfLoading == PDFLoading.loading) {
            context.navigateTo(const WaitingScreenRoute());
          } else if (state.pdfLoading == PDFLoading.error ||
              state.pdfLoading == PDFLoading.loaded) {
            context.back();
          }
        },
        builder: (context, state) {
          final cubit = context.read<PdfCubit>();
          return Scaffold(
            appBar: AppBar(),
            body: state.path != null
                ? SfPdfViewer.file(state.path!,enableTextSelection: true,onTextSelectionChanged: (details) {
                  cubit.changSelect(details.selectedText);
                },onDocumentLoaded: (details) {
                  cubit.loaded();
                },onDocumentLoadFailed: (details) {
                  cubit.loadFail();
                },)
                : const SizedBox(),
            floatingActionButton: CupertinoButtonEdit(
              text: '🔍',
              color: Colors.deepOrangeAccent,
              onPressed: () async {
                if (context.mounted) {
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
                        child: NewsSearchBottomSheet(
                            query: state.selectText ?? ''),
                      );
                    },
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
