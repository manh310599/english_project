import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/button/cupertino_button.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/features/auth/presentation/forgot_pass_word/viewmodel/forgot_pass_cubit.dart';
import 'package:english_project/app/features/auth/presentation/forgot_pass_word/viewmodel/forgot_pass_cubit.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../gaps.dart';

@RoutePage()
class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ForgotPassCubit(),
        child: BlocBuilder<ForgotPassCubit, ForgotPassState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png'),
                Gaps.vGap16,
                EditText(
                  preIcon: const Icon(Icons.cleaning_services_sharp),
                  hinText: 'Nhập email',
                  icon: const Icon(Icons.email),
                  callback: (data) {
                    context.read<ForgotPassCubit>().setEmail(data);
                  },
                ),
                CupertinoButtonEdit(
                  text: 'Gửi SMS',
                  textColor: Colors.black,
                  onPressed: () {
                    context.read<ForgotPassCubit>().forgotPassWord(context);
                  },
                ),
              ],
            );
          },
        ),
      ).p16(),
    );
  }
}
