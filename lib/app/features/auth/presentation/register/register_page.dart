import 'package:auto_route/auto_route.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart';
import 'package:english_project/app/features/auth/presentation/register/viewmodel/register_cubit.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../common/widget/button/cupertino_button.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<RegisterCubit>(
        create: (BuildContext context) => RegisterCubit(),
        child: BlocBuilder<RegisterCubit, RegisterState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    Gaps.vGap16,
                    EditText(
                      preIcon: const Icon(Icons.cleaning_services_sharp),
                      hinText: 'Email',
                      icon: const Icon(Icons.account_circle_rounded),
                      callback: (data) {
                        context.read<RegisterCubit>().setEmail(data);
                      },
                    ),
                    Gaps.vGap16,
                    EditText(
                      preIcon: const Icon(Icons.cleaning_services_sharp),
                      hinText: 'Mật khẩu',
                      icon: const Icon(Icons.lock),
                      callback: (data) {
                        context.read<RegisterCubit>().setPass(data);
                      },
                      stylePassWord: true,
                      click: true,
                    ),
                    Gaps.vGap16,
                    EditText(
                      preIcon: const Icon(Icons.cleaning_services_sharp),
                      hinText: 'Nhập lại mật khẩu',
                      icon: const Icon(Icons.lock),
                      callback: (data) {
                        context.read<RegisterCubit>().setRePass(data);
                      },
                      stylePassWord: true,
                      click: true,
                    ),
                    Gaps.vGap16,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        CupertinoButtonEdit(
                          color: Colors.greenAccent,
                          text: 'Đăng nhập',
                          onPressed: () {
                            context.popRoute();
                          },
                        ),
                        BlocBuilder<CheckauthBloc, CheckauthState>(
                          builder: (context, state) {
                            final register = context.read<RegisterCubit>();
                            final checkAuth = context.read<CheckauthBloc>();
                            return CupertinoButtonEdit(
                              text: 'Đăng ký',
                              onPressed: () async {
                                await register.registerByEmail(context);
                                register.state.apiStatus == ApiStatus.success
                                    ? checkAuth.add(const CheckauthEvent.logged())
                                    : null;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ).p16(),
    );
  }
}
