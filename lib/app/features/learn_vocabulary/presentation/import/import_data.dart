import 'package:auto_route/annotations.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/button/cupertino_button.dart';
import 'package:english_project/app/features/learn_vocabulary/core/read_write_file.dart';
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
      child: BlocBuilder<ImportCubit, ImportState>(
        builder: (context, state) {
          final cubit = context.read<ImportCubit>();
          return Scaffold(
            appBar: AppBar(
              title: 'Lấy dữ liệu'.text.make(),
              centerTitle: true,
            ),
            body: state.data == null
                ? Center(
                    child: CupertinoButtonEdit(
                      text: 'Lấy file',
                      onPressed: () async {
                        final test = await readCounter;
                        cubit.getData(test);
                      },
                    ),
                  )
                : ListView.builder(
                    itemBuilder: (context, index) {
                      return state.data?[index].toString().text.make();
                    },
                    itemCount: state.data?.length ?? 0,
                  ),
          );
        },
      ),
    );
  }
}
