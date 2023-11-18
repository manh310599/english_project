import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/widget/button/cupertion_button_custom.dart';
import 'package:english_project/app/features/learn_vocabulary/presentation/viewmodel/learn_vocabulary_cubit.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../all_file/all_file.dart';
import '../../../dimens.dart';

@RoutePage()
class LearnVocabularyPage extends StatelessWidget {
  const LearnVocabularyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LearnVocabularyCubit()..getStoreWord(),
      child: BlocConsumer<LearnVocabularyCubit, LearnVocabularyState>(
        listener: (context, state) {
          if(state.apiStatus == ApiStatus.loaded) {
            state.words!.isEmpty
              ? AwesomeDialog(
            context: context,
            dialogType: DialogType.warning,
            animType: AnimType.rightSlide,
            title: 'Hiện không có từ vựng trong bộ khóa học này',
            btnOkOnPress: () {},
          ).show()
              : context.pushRoute(LessonRoute(words: state.words));
            context.read<LearnVocabularyCubit>().refreshStatus();
          }
        },
        builder: (context, state) {
          final cubit = context.read<LearnVocabularyCubit>();
          return Scaffold(
            appBar: AppBar(
              title: 'Kho khóa học'.text.make(),
              centerTitle: true,
              actions: [
                CupertinoButtonCustom(
                    color: Vx.white,
                    click: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.infoReverse,
                        customHeader: Image.asset('assets/images/add.png'),
                        title: 'Thêm khóa học',
                        body: TextFormField(
                          controller:
                              context.read<LearnVocabularyCubit>().controller,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Dimens.rad_circular),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            hintText: 'Nhập vào tên khóa học',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        btnOkOnPress: () {
                          context
                              .read<LearnVocabularyCubit>()
                              .addStoreWord(context);
                        },
                        btnCancelOnPress: () {},
                      ).show();
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.blueAccent,
                    )).px8().py8()
              ],
            ),
            body: ListView.separated(
              itemBuilder: (context, index) {
                return CupertinoButtonCustom(
                    color: Colors.black,
                    click: () async {
                      cubit.getListWordsByDay(state.data![index]!.id!, context);
                    },
                    press: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.warning,
                        animType: AnimType.rightSlide,
                        title: 'Cài đặt bộ từ vựng',
                        btnCancelText: 'Xóa',
                        btnOkText: 'Chỉnh sửa',
                        btnCancelOnPress: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.warning,
                            animType: AnimType.rightSlide,
                            title: 'Bạn có chắc muốn xóa bộ bài học không',
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {
                              context
                                  .read<LearnVocabularyCubit>()
                                  .deleteStoreWord(
                                      context, state.data?[index]?.id);
                            },
                          ).show();
                        },
                        btnOkOnPress: () {

                          context.pushRoute(CourseRoute(
                              id: state.data?[index]?.id,
                              name: state.data?[index]?.name));
                        },
                      ).show();
                    },
                    child: state.data?[index]?.name?.text.bold.make() ??
                        ''.text.make());
              },
              itemCount: state.data?.length ?? 0,
              separatorBuilder: (BuildContext context, int index) {
                return Gaps.vGap16;
              },
            ).px16().py16(),
          );
        },
      ),
    );
  }
}
