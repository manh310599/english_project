import 'package:auto_route/annotations.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/cubit/information_card/information_card_cubit.dart';
import 'package:english_project/app/common/widget/button/cupertion_button_custom.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/features/search_word/presentation/view/search_word_body.dart';
import 'package:english_project/dimens.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class SearchWordPage extends StatelessWidget {
  const SearchWordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocProvider(
        create: (context) => InformationCardCubit(),
        child: BlocBuilder<InformationCardCubit, InformationCardState>(
          builder: (context, state) {
            final cubit = context.read<InformationCardCubit>();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Gaps.hGap8,
                    Image.asset(
                      'assets/images/logo.png',
                      height: Dimens.ic_XL,
                    ),
                    Gaps.hGap8,
                    EditText(
                      preIcon: const Icon(Icons.cleaning_services_rounded),
                      icon: const Icon(
                        Icons.search,
                      ),
                      hinText: 'Tìm kiếm từ vựng',
                      search: (data) {
                        context.read<InformationCardCubit>().searchWord(data);
                        context.read<InformationCardCubit>().enableSave();
                      },
                    ).flexible(),
                    Gaps.hGap8,
                    CupertinoButtonCustom(
                      click: () {
                        if (state.check == true) {
                          if (state.idStorageWord != null ||
                              state.data?.isNotEmpty == true) {
                            cubit.saveWord(
                                state.idStorageWord ?? state.data?[0]?.id,
                                context);
                            cubit.disibleSave();
                          } else {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.error,
                              title: 'thêm dữ liệu thất bại hãy đảm'
                                  ' bảo bán có 1 khóa học đã được tạo',
                              btnOkOnPress: () {},
                            ).show();
                          }
                        }
                        else{

                        }
                      },
                      color: Vx.white,
                      child: const Icon(
                        Icons.save_as,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ).px8(),
                Container(
                  padding: Vx.m16,
                  child: state.translate?.sentences?[0].orig?.text != null
                      ? SearchWordBody(state: state)
                      : Image.asset(
                          'assets/images/search_word.png',
                          fit: BoxFit.fill,
                        ),
                ).expand()
              ],
            );
          },
        ),
      )),
    );
  }
}
