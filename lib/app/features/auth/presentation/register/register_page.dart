import 'package:auto_route/auto_route.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/features/auth/presentation/register/viewmodel/register_cubit.dart';
import 'package:flutter/material.dart';

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
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                  EditText(
                    hinText: 'Email',
                    icon: const Icon(Icons.account_circle_rounded),
                    callback: (data) {
                      context.read<RegisterCubit>().setEmail(data);
                    },
                  ),
                  EditText(
                    hinText: 'Mật khẩu',
                    icon: const Icon(Icons.lock),
                    callback: (data) {
                      context.read<RegisterCubit>().setPass(data);
                    },
                    stylePassWord: true,
                    click: true,
                  ),
                  EditText(
                    hinText: 'Nhập lại mật khẩu',
                    icon: const Icon(Icons.lock),
                    callback: (data) {
                      context.read<RegisterCubit>().setRePass(data);
                    },
                    stylePassWord: true,
                    click: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CupertinoButtonEdit(
                        text: 'Đăng ký',
                        onPressed: () {
                          context
                              .read<RegisterCubit>()
                              .registerByEmail(context);

                        },
                      ),
                      CupertinoButtonEdit(
                        color: Colors.greenAccent,
                        text: 'Đăng nhập',
                        onPressed: () {
                          context.popRoute();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
