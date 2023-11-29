import 'package:auto_route/annotations.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/button/cupertion_button_custom.dart';
import 'package:english_project/app/features/learn_vocabulary/presentation/export/viewmodel/export_cubit.dart';
import 'package:english_project/font_size.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class Export extends StatelessWidget {
  const Export({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExportCubit()..getStoreWord(),
      child: BlocConsumer<ExportCubit, ExportState>(
        listener: (context, state) {
          if (state.exportImportFile == ExportImportFile.loading) {
            Container(
              color: Colors.black54,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state.exportImportFile == ExportImportFile.error) {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.error,
              title:
                  'Xuất bản dữ liệu không thành công hãy đảm bảo khóa học có dữ liệu',
              btnOkOnPress: () {},
            ).show();
          } else if (state.exportImportFile == ExportImportFile.success) {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.success,
              title: 'Xuất bản dữ liệu thành công',
              btnOkOnPress: () {},
            ).show();
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: 'Xuất dự liệu bộ khóa học'.text.make(),
            ),
            body: state.data?.isEmpty == false
                ? ListView.separated(
                        itemBuilder: (context, index) {
                          return CupertinoButtonCustom(
                            click: () {
                              AwesomeDialog(
                                context: context,
                                title:
                                    'Bạn có chắc muốn xuất khóa học này không',
                                dialogType: DialogType.warning,
                                btnOkOnPress: () {
                                  context.read<ExportCubit>().exportCSV(
                                        state.data?[index]?.id,
                                        state.data?[index]?.name,
                                      );
                                },
                                btnCancelOnPress: () {},
                              ).show();
                            },
                            color: Colors.black,
                            child: state.data?[index]?.name?.text.make() ??
                                ''.text.make(),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Gaps.vGap8;
                        },
                        itemCount: state.data?.length ?? 0)
                    .p16()
                : Center(
                    child:
                        'Hiện khóa học đang trống hãy quay trở lại và thêm vào'
                                ' bộ khóa học của bạn'
                            .text.center.size(big)
                            .make(),
                  ).p16(),
          );
        },
      ),
    );
  }
}
