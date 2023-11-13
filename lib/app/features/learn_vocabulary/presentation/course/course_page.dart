import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/common/widget/button/cupertion_button_custom.dart';
import 'package:english_project/app/features/learn_vocabulary/presentation/course/viewmodel/course_cubit.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../all_file/all_file.dart';
import '../../../../common/model/storage_database.dart';

@RoutePage()
class CoursePage extends StatelessWidget {
  const CoursePage({
    super.key,
    this.name,
    this.words,
  });

  final List<Words?>? words;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CourseCubit()..getListWord(words),
      child: BlocBuilder<CourseCubit, CourseState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: 'Từ vựng $name'.text.bold.make(),
              centerTitle: true,
              actions: [
                CupertinoButtonCustom(
                    color: Vx.white,
                    click: () {
                      context.navigateTo(const SearchWordRoute());
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.blueAccent,
                    )).px8().py8()
              ],
            ),
            body: state.data?[0]?.EF?.text.make(),
          );
        },
      ),
    );
  }
}
