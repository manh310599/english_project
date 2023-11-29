import 'package:auto_route/annotations.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/button/cupertino_button.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text_no_icon.dart';
import 'package:english_project/app/features/learn_vocabulary/core/read_write_file.dart';
import 'package:english_project/app/features/learn_vocabulary/presentation/export/viewmodel/export_cubit.dart';
import 'package:english_project/app/features/learn_vocabulary/presentation/import/viewmodel/import_cubit.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class Import extends StatelessWidget {
  const Import({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImportCubit(),
      child: BlocConsumer<ImportCubit, ImportState>(
        listener: (context, state) {
          if (state.exportImportFile == ExportImportFile.loading) {
            Center(
              child: Container(
                color: Colors.black54,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ).h20(context);
          } else if (state.exportImportFile == ExportImportFile.error) {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.error,
              title:
                  'Xuất bản dữ liệu không thành công '
                      'hãy đảm bảo khóa học có dữ liệu hoặc đặt'
                      ' tên khác với tên khóa học đã có sẵn',
              btnOkOnPress: () {},
            ).show();
           } else if (state.exportImportFile == ExportImportFile.success) {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.success,
              title:
                  'Tạo bộ khóa học mới thành công chúng tôi đã tối ưu dữ liệu'
                      ' và loại bỏ trùng lập từ vựng',
              btnOkOnPress: () {},
            ).show();
          }
        },
        builder: (context, state) {
          final cubit = context.read<ImportCubit>();
          return Scaffold(
              appBar: AppBar(
                title: 'Lấy dữ liệu'.text.make(),
                centerTitle: true,
              ),
              body: Center(
                child: CupertinoButtonEdit(
                  text: 'Lấy file',
                  onPressed: () async {
                    final test = await readCounter;
                    if (test != null) {
                      if (context.mounted) {
                        AwesomeDialog(
                          context: context,
                          body: EditTextNoIcon(
                            text: 'Đồng ý',
                            data: (data) {
                              cubit.getData(test, data);
                            },
                          ),
                          btnCancelOnPress: () {},
                        ).show();
                      }
                    }
                  },
                ),
              ));
        },
      ),
    );
  }
}
