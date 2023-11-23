import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  var random = Random();

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
          state.customUser!.repass.isEmptyOrNull) {
        showDiaLogCustom(context, 'Bạn không được để trống bất kì trường nào',
            'Hãy điền đầy đủ thông tin nhé');
        emit(state.copyWith(apiStatus: ApiStatus.fail));
      } else if (state.customUser!.email.isEmptyOrNull) {
        showDiaLogCustom(
            context, 'Không được để trống email', 'Hãy điền email của bạn');
        emit(state.copyWith(apiStatus: ApiStatus.fail));
      } else if (state.customUser!.passWord != state.customUser!.repass) {
        showDiaLogCustom(context, 'Mật khẩu nhập lại không chính xác',
            'Hãy nhập lại mật khẩu');
        emit(state.copyWith(apiStatus: ApiStatus.fail));
      } else if (state.customUser!.passWord.isEmptyOrNull ||
          state.customUser!.repass.isEmptyOrNull) {
        showDiaLogCustom(context, 'Không được trống các trường',
            'Hãy nhập đầy đủ các trường');
        emit(state.copyWith(apiStatus: ApiStatus.fail));
      } else if (!checkEmail(state.customUser!.email)) {
        showDiaLogCustom(
            context, 'Định dạng email không đúng', 'Hãy nhập lại email');
        emit(state.copyWith(apiStatus: ApiStatus.fail));
      } else {
        final regis =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: state.customUser?.email ?? '',
          password: state.customUser?.passWord ?? '',
        );
        if (regis.user != null) {
          int randomNumber = random.nextInt(900000) + 100000;
          firebaseFirestore
              .collection('users')
              .doc(regis.user?.uid)
              .set({
                'userID': randomNumber,
                'finalDayPremium': 0,
                'dayOflearn': 0
              })
              .then((value) =>
                  print("'full_name' & 'age' merged with existing data!"))
              .catchError((error) {
                showDiaLogCustom(
                    context, 'Có vẻ server đang lỗi hãy thử lại nhé', '');
              });

          emit(state.copyWith(apiStatus: ApiStatus.success));
        } else {
          emit(state.copyWith(apiStatus: ApiStatus.fail));
        }
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
      emit(state.copyWith(apiStatus: ApiStatus.fail));
    } catch (e) {
      print(e);
      emit(state.copyWith(apiStatus: ApiStatus.fail));
    }
  }
}
