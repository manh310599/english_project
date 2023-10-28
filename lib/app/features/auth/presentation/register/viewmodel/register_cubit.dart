import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/check_isvaid.dart';
import 'package:english_project/app/common/widget/dialog/show_dialog.dart';
import 'package:english_project/app/features/auth/presentation/register/model/custom_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velocity_x/velocity_x.dart';

part 'register_cubit.freezed.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState());

  void setEmail(String? email) {
    emit(state.copyWith(
        customUser: CustomUser(
            email: email,
            passWord: state.customUser?.passWord,
            repass: state.customUser?.repass)));
  }

  void setPass(String? pass) {
    emit(state.copyWith(
        customUser: CustomUser(
            passWord: pass,
            email: state.customUser?.email,
            repass: state.customUser?.repass)));
  }

  void setRePass(String? rePass) {
    emit(state.copyWith(
        customUser: CustomUser(
            repass: rePass,
            email: state.customUser?.email,
            passWord: state.customUser?.passWord)));
  }

  Future<void> registerByEmail(context) async {
    try {
      if (state.customUser!.email.isEmptyOrNull &&
          state.customUser!.passWord.isEmptyOrNull &&
          state.customUser!.repass.isEmptyOrNull)
      {
        showDiaLogCustom(
            context, 'Bạn không được để trống bất kì trường nào', 'Hãy điền đầy đủ thông tin nhé');
      } else if (state.customUser!.email.isEmptyOrNull) {
        showDiaLogCustom(
            context, 'Không được để trống email', 'Hãy điền email của bạn');
      } else if (state.customUser!.passWord != state.customUser!.repass) {
        showDiaLogCustom(context, 'Mật khẩu nhập lại không chính xác',
            'Hãy nhập lại mật khẩu');
      } else if (state.customUser!.passWord.isEmptyOrNull ||
          state.customUser!.repass.isEmptyOrNull) {
        showDiaLogCustom(context, 'Không được trống các trường',
            'Hãy nhập đầy đủ các trường');
      } else if (!checkEmail(state.customUser!.email)) {
        showDiaLogCustom(
            context, 'Định dạng email không đúng', 'Hãy nhập lại email');
      } else {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: state.customUser?.email ?? '',
          password: state.customUser?.passWord ?? '',
        );

        await showDiaLogCustom(
            context, 'Chúc mừng bạn đăng kí thành công', '');

        await Future.delayed(const Duration(seconds: 2));
        context.popRoute();

      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showDiaLogCustom(
            context, 'mật khẩu quá yếu', 'Hãy dùng mật khẩu mạnh hơn');
        emit(state.copyWith(registerStatus: RegisterStatus.passToWeek));
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showDiaLogCustom(context, 'Tài khoản đã có người sử dụng',
            'Hãy dùng tài khoản khác nhé');
        emit(state.copyWith(registerStatus: RegisterStatus.emailIsValid));
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
