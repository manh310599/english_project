import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_user_state.dart';
part 'web_user_cubit.freezed.dart';

class WebUserCubit extends Cubit<WebUserState> {
  WebUserCubit() : super(const WebUserState());
}
