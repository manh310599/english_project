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
    on<_Logout>(LogOut);
  }
  final check = FirebaseAuth.instance;

  Future<void> checkLogin(event, Emitter<CheckauthState> emit) async {

     final currentUser = check.currentUser;
     if(currentUser != null ){
      emit(state.copyWith(checkAuth: CheckAuth.logged,user: currentUser));
     }
     else {
       emit(state.copyWith(checkAuth: CheckAuth.loggedOut,user: null));
     }

  }

  Future<void> Login (event,Emitter<CheckauthState> emit) async {
    final currentUser = check.currentUser;
    emit(state.copyWith(checkAuth: CheckAuth.logged,user: currentUser));
  }

  Future<void> LogOut (event,Emitter<CheckauthState> emit) async {
    emit(state.copyWith(checkAuth: CheckAuth.loggedOut,user: null));
  }
}
