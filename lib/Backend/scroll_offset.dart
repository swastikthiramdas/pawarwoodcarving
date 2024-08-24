import 'package:flutter_bloc/flutter_bloc.dart';

class Scrolloffset {
  int scrollOffsetValue;

  Scrolloffset({
    required this.scrollOffsetValue,
  });

  Scrolloffset copyWith(int scrollOffsetValue){
    return Scrolloffset(scrollOffsetValue: scrollOffsetValue);
  }
}


class DisplayOffset extends Cubit<Scrolloffset>{
  DisplayOffset(Scrolloffset display) : super(display);

  void changeDisplayOffset(int value){
    emit(state.copyWith(value));
  }

}