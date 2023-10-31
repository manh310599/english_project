import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/check_isvaid.dart';
import 'package:english_project/app/common/widget/dialog/show_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_pass_cubit.freezed.dart';

part 'forgot_pass_state.dart';

class ForgotPassCubit extends Cubit<ForgotPassState> {
  ForgotPassCubit() : super(const ForgotPassState());

  void setEmail(String? email) {
    emit(state.copyWith(email: email));
  }

  Future<void> forgotPassWord(context) async {

     if(checkEmail(state.email) == false){

    showDiaLogCustom(context, 'Email có vẻ không hợp lệ',
    'vui lòng nhập lại emai;');
    }
    else if (checkEmail(state.email) == true) {
      try{
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: state.email ?? '');
        showDiaLogCustom(context, 'Đã gửi email đổi mật khẩu đến gmail của bạn',
            'vui lòng check email');
        await FirebaseAuth.instance.setLanguageCode("vn");
        await Future.delayed(const Duration(seconds: 3));
      } on FirebaseAuthException catch (e){
        if(e.code == 'invalid-email'){
          showDiaLogCustom(context, 'Email có vẻ không hợp lệ',
              'vui lòng nhập lại emai;');
        }
      }

     // context.popRoute();

    }

  }
}
