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
              setChannel: false,
              channelName: '',
              setFrequency: false,
              frequency: ''),
        );

  void setInitialState() {
    emit(
      XvSetupState(
          sec: false,
          sel: false,
          sq: false,
          sdx: false,
          powLow: false,
          powHigh: false,
          setChannel: false,
          channelName: '',
          setFrequency: false,
          frequency: ''),
    );
  }

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
          setChannel: state.setChannel,
          frequency: state.frequency,
          setFrequency: state.setFrequency),
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
            setChannel: state.setChannel,
            setFrequency: state.setFrequency,
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
          frequency: "",
          setChannel: state.setChannel,
          setFrequency: state.setFrequency),
    );
  }

  void setSDX(bool setSDX) {
    emit(
      XvSetupState(
          sec: state.sec,
          sel: state.sel,
          sq: state.sq,
          sdx: setSDX,
          powLow: state.powLow,
          powHigh: state.powHigh,
          channelName: state.channelName,
          frequency: state.frequency,
          setChannel: state.setChannel,
          setFrequency: state.setFrequency),
    );
  }

  void setSEC(bool value) {
    emit(
      XvSetupState(
          sec: value,
          sel: state.sel,
          sq: state.sq,
          sdx: state.sdx,
          powLow: state.powLow,
          powHigh: state.powHigh,
          channelName: state.channelName,
          frequency: state.frequency,
          setChannel: state.setChannel,
          setFrequency: state.setFrequency),
    );
  }

  void setSEL(bool value) {
    emit(
      XvSetupState(
          sec: state.sec,
          sel: value,
          sq: state.sq,
          sdx: state.sdx,
          powLow: state.powLow,
          powHigh: state.powHigh,
          channelName: state.channelName,
          frequency: state.frequency,
          setChannel: state.setChannel,
          setFrequency: state.setFrequency),
    );
  }

  void setSQ(bool value) {
    emit(
      XvSetupState(
          sec: state.sec,
          sel: state.sel,
          sq: value,
          sdx: state.sdx,
          powLow: state.powLow,
          powHigh: state.powHigh,
          channelName: state.channelName,
          frequency: state.frequency,
          setChannel: state.setChannel,
          setFrequency: state.setFrequency),
    );
  }
}
