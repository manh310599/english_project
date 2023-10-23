import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_status_state.dart';
part 'card_status_cubit.freezed.dart';

class CardStatusCubit extends Cubit<CardStatusState> {
  CardStatusCubit() : super(const CardStatusState());

  bool faceCard = false;

  void setDeck(int cardSet) {
    print('test $faceCard');
    if (faceCard == true) {
      if (cardSet - 1 == state.deck) {
        resetDeck();
      } else {
        emit(state.copyWith(
          deck: state.deck + 1,
        ));
      }

    }

    if(state.showChoice == true){
      emit(state.copyWith(showChoice: false));
    }
    else{
      emit(state.copyWith(showChoice: true));
    }

    if (faceCard == true) {
      faceCard = false;
    } else {
      faceCard = true;
    }
  }

  void resetDeck() {
    emit(state.copyWith(deck: 0));
  }
}
