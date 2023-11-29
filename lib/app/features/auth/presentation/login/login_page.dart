import 'package:auto_route/auto_route.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/widget/button/cupertino_button.dart';
import 'package:english_project/app/common/widget/button/image_button.dart';
import 'package:english_project/app/common/widget/button/text_button.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart';
import 'package:english_project/app/features/auth/presentation/login/viewmodel/login_cubit.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: BlocProvider(
          create: (context) => LoginCubit(),
          child: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png',).h24(context).cornerRadius(30),
                    Gaps.vGap16,
                    EditText(
                      preIcon: const Icon(Icons.cleaning_services_sharp),
                      hinText: 'Email',
                      icon: const Icon(Icons.account_circle_rounded),
                      callback: (data) {
                        context.read<LoginCubit>().setEmail(data);
                      },
                    ),
                    Gaps.vGap16,
                    EditText(
                      preIcon: const Icon(Icons.cleaning_services_sharp),
                      hinText: 'Mật khẩu',
                      icon: const Icon(Icons.lock),
                      callback: (data) {
                        context.read<LoginCubit>().setPass(data);
                      },
                      stylePassWord: true,
                      click: true,
                    ),
                    BlocBuilder<CheckauthBloc, CheckauthState>(
                      builder: (context, state) {
                        final login = context.read<LoginCubit>();
                        final checkAuth = context.read<CheckauthBloc>();
                        return CupertinoButtonEdit(
                          text: 'Đăng nhập',
                          onPressed: () async {
                            await context
                                .read<LoginCubit>()
                                .loginWithEmail(context);
                            login.state.apiStatus == ApiStatus.success
                                ? checkAuth.add(const CheckauthEvent.logged())
                                : null;
                          },
                        );
                      },
                    ),
                    TextButtonCustom(
                      text: 'Bạn quên mật khẩu click vào đây',
                      textColor: Colors.amberAccent,
                      action: () {
                        context.pushRoute(const ForgotPasswordRoute());
                      },
                    ),
                    BlocBuilder<CheckauthBloc, CheckauthState>(
                      builder: (context, state) {
                        final login = context.read<LoginCubit>();
                        final checkAuth = context.read<CheckauthBloc>();
                        return ImageButton(
                          src: 'assets/images/google.png',
                          action: () async {
                            await login.loginWithGoogle(context);
                            checkAuth.add(const CheckauthEvent.logged());
                          },
                        );
                      },
                    ),
                    Gaps.vGap8,
                    TextButtonCustom(
                      text: 'bạn chưa có tài khoản hãy click vào đây nhé',
                      textColor: context.themeColor.textLink,
                      action: () {
                        context.pushRoute(const RegisterRoute());
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                    )
                  ],
                ),
              );
            },
          ),
        ).p16(),
        floatingActionButton: CupertinoButtonEdit(
          text: 'Thoát',
          textColor: Colors.black,
          onPressed: () {
            SystemNavigator.pop();
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
