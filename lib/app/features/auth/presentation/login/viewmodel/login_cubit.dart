import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/check_isvaid.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../common/widget/dialog/show_dialog.dart';

part 'login_cubit.freezed.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void setEmail(email) {
    emit(state.copyWith(email: email));
  }

  void setPass(pass) {
    emit(state.copyWith(pass: pass));
  }

  Future<void> loginWithEmail(context) async {
    if (state.email.isEmptyOrNull || state.pass.isEmptyOrNull) {
      showDiaLogCustom(context, 'Không được để trống các thông tin ',
          'Hãy nhập đầy đủ thông tin');
      emit(state.copyWith(apiStatus: ApiStatus.fail));
    } else if (!checkEmail(state.email)) {
      showDiaLogCustom(
          context, 'Email không đúng định dạng', 'Hãy nhập lại email');
      emit(state.copyWith(apiStatus: ApiStatus.fail));
    } else if (state.pass!.length < 6) {
      showDiaLogCustom(context, 'Mật khẩu phải lớn hơn hoặc bằng 6 kí tự',
          'Hãy nhập lại mật khẩu');
      emit(state.copyWith(apiStatus: ApiStatus.fail));
    } else {
      try {
        final login = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: state.email!,
          password: state.pass!,
        );
        if (login.user != null) {
          emit(state.copyWith(apiStatus: ApiStatus.success));
        } else {
          emit(state.copyWith(apiStatus: ApiStatus.fail));
        }
      } on FirebaseAuthException catch (e) {
        //if(e.code == 'INVALID_LOGIN_CREDENTIALS')
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        } else if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
          showDiaLogCustom(context, 'Tài khoản hoặc mật khẩu không trung khớp',
              'Hãy nhập lại');
        } else if (e.code == 'ACCOUNT_TEMPORARILY_DISABLED') {
          showDiaLogCustom(
              context,
              'Truy cập vào tài khoản này đã bị tạm thời vô hiệu hóa do hoạt động không bình thường.',
              'Bạn có thể khôi phục tài khoản ngay bằng cách đặt lại mật khẩu hoặc thử lại sau.');
        }
        emit(state.copyWith(apiStatus: ApiStatus.fail));
      } catch (e) {
        emit(state.copyWith(apiStatus: ApiStatus.fail));
      }
    }
  }

  Future<void> loginWithGoogle(context) async {
    Future<UserCredential> signInWithGoogle() async {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    }

    await signInWithGoogle();
    emit(state.copyWith(apiStatus: ApiStatus.success));
  }
}
