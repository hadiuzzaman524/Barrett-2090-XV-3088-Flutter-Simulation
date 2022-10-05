import 'package:bloc/bloc.dart';
import 'package:radio_set/services/model/xv_setup.dart';

import 'state.dart';

class XvSetupCubit extends Cubit<XvSetupState> {
  XvSetupCubit()
      : super(
          XvSetupState(
              sec: false,
              sel: false,
              sq: false,
              sdx: false,
              powLow: false,
              powHigh: false,
              channelName: '0',
              frequency: ''),
        );

  void setChannelNumber({required String number}) {
    emit(
      XvSetupState(
          sec: state.sec,
          sel: state.sel,
          sq: state.sq,
          sdx: state.sdx,
          powLow: state.powLow,
          powHigh: state.powHigh,
          channelName: number,
          frequency: state.frequency),
    );
  }

  void setFrequency({required String number}) {
    String freq = "";

    String temp = state.frequency + number;

    for (int i = 0; i < temp.length; i++) {
      if (temp.length < 7) {
        freq += temp[i];
      }
    }
    if (temp.length == 2) {
      freq = temp.replaceFirstMapped(
          RegExp(r".{2}"), (match) => "${match.group(0)}.");
    }

    if (temp.length < 7) {
      emit(
        XvSetupState(
            sec: state.sec,
            sel: state.sel,
            sq: state.sq,
            sdx: state.sdx,
            powLow: state.powLow,
            powHigh: state.powHigh,
            channelName: state.channelName,
            frequency: freq),
      );
    }
  }

  void clearFrequency() {
    emit(
      XvSetupState(
          sec: state.sec,
          sel: state.sel,
          sq: state.sq,
          sdx: state.sdx,
          powLow: state.powLow,
          powHigh: state.powHigh,
          channelName: state.channelName,
          frequency: ""),
    );
  }
}
