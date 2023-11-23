import 'package:auto_route/annotations.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text_no_icon.dart';
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart';
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart';
import 'package:english_project/dimens.dart';
import 'package:english_project/font_size.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class CustomInformationPage extends StatelessWidget {
  const CustomInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckauthBloc, CheckauthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: 'Chỉnh sửa thông tin cá nhân'.text.make(),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                'Tên người dùng'.text.size(big).make(),
                Gaps.vGap8,
                EditTextNoIcon(data: (data) {

                },text: 'Đổi tên',content: state.user?.displayName,),
                Gaps.vGap8,
                'Email'.text.size(big).make(),
                Gaps.vGap8,
                EditTextNoIcon(data: (data) {
                  Clipboard.setData(ClipboardData(text: data!));
                },text: ' CopyEmail',content: state.user?.email,enable: false,),
                Gaps.vGap8,

                EditTextNoIcon(text: 'Copy ID',content: state.idUser?.userID.toString(),enable: false,data: (data) {
                  Clipboard.setData(ClipboardData(text: data!));
                },),
              ],
            ).p16(),
          ),
        );
      },
    );
  }
}
