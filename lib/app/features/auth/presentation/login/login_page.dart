import 'package:auto_route/auto_route.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/common/widget/button/cupertino_button.dart';
import 'package:english_project/app/common/widget/button/image_button.dart';
import 'package:english_project/app/common/widget/button/text_button.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/features/auth/presentation/login/viewmodel/login_cubit.dart';
import 'package:english_project/gaps.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginCubit(),
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                  EditText(
                    hinText: 'Email',
                    icon: const Icon(Icons.account_circle_rounded),
                    callback: (data) {
                      context.read<LoginCubit>().setEmail(data);
                    },
                  ),
                  EditText(
                    hinText: 'Mật khẩu',
                    icon: const Icon(Icons.lock),
                    callback: (data) {
                      context.read<LoginCubit>().setPass(data);
                    },
                    stylePassWord: true,
                    click: true,
                  ),
                  CupertinoButtonEdit(
                    text: 'Đăng nhập',
                    onPressed: () {
                      context.read<LoginCubit>().loginWithEmail(context);


                    },
                  ),
                   TextButtonCustom(
                      text: 'Bạn quên mật khẩu click vào đây',
                      textColor: Colors.amberAccent,
                      action: () {
                        context.pushRoute(const ForgotPasswordRoute());
                      },
                  ),
                   ImageButton(
                     src: 'assets/images/google.png',
                     action: () {
                       context.read<LoginCubit>().loginWithGoogle(context);
                     },
                   ),
                  Gaps.vGap8,
                  TextButtonCustom(
                    text: 'bạn chưa có tài khoản hãy click vào đây nhé',
                    textColor: context.themeColor.textLink,
                    action: () {
                      context.pushRoute(const RegisterRoute());
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
