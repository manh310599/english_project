import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/common/widget/waiting/wating_screen.dart';
import 'package:english_project/app/features/news/presentation/PDF/viewmodel/pdf_cubit.dart';
import 'package:english_project/font_size.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../all_file/all_file.dart';
import '../../../../../dimens.dart';
import '../../../../common/widget/button/cupertino_button.dart';

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
            context.navigateTo(WaitingScreenRoute());

          } else if (state.pdfLoading == PDFLoading.error || state.pdfLoading == PDFLoading.loaded) {
            print('thử nghiệm');
            context.back();
          }
        },

        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: state.content.isNotEmptyAndNotNull
                ? SelectableText(
                    state.content ?? "",
                    onSelectionChanged: (selection, cause) {
                      print(selection.textInside(state.content ?? ""));
                    },
                    // selectionControls: TextSelectionControls,
                    showCursor: true,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: big - 2,
                      overflow: TextOverflow.ellipsis,
                    ).copyWith(
                      height: 1.5,
                    ),
                  ).p16()
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
                        height: height * 0.6,
                        width: width,
                        //child: NewsSearchBottomSheet(query: check ?? ''),
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
