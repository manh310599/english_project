import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkauth_bloc.freezed.dart';

part 'checkauth_event.dart';

part 'checkauth_state.dart';

class CheckauthBloc extends Bloc<CheckauthEvent, CheckauthState> {
  CheckauthBloc() : super(const CheckauthState()) {
    on<_Stated>(checkLogin);
    on<_Logged>(Login);
  }

  Future<void> checkLogin(event, Emitter<CheckauthState> emit) async {
     final check = FirebaseAuth.instance.currentUser;
     if(check != null ){
       emit(state.copyWith(checkAuth: CheckAuth.logged));
     }
     else {
       emit(state.copyWith(checkAuth: CheckAuth.loggedOut));
     }
  }

  Future<void> Login (event,Emitter<CheckauthState> emit) async {
    emit(state.copyWith(checkAuth: CheckAuth.logged));
  }
}
