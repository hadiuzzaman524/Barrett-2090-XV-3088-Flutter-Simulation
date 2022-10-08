import 'package:bloc/bloc.dart';

import 'state.dart';

class BarretSetupCubit extends Cubit<BarretSetupState> {
  BarretSetupCubit() : super(BarretSetupState(channelNumber: ""));

  void setChannelNumber({required String channelNumber}) {
    if (state.channelNumber.length < 4) {
      emit(
          BarretSetupState(channelNumber: state.channelNumber + channelNumber));
    }
  }

  void clearChannelNumber() {
    emit(BarretSetupState(channelNumber: ""));
  }
}
