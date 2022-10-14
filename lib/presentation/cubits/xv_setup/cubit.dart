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
              powLow: true,
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
          powLow: true,
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

  String frequencyConversion(String freq) {
    String firstHalf = "";
    String secondHalf = "";
    for (int i = 0; i < freq.length; i++) {
      if (i < 2) {
        firstHalf += freq[i];
      } else if (i > 2) {
        secondHalf += freq[i];
      }
    }

    int firstFreq = 0;
    int secondFreq = 0;

    if (firstHalf.isNotEmpty) {
      firstFreq = int.parse(firstHalf);
    }
    if (secondHalf.isNotEmpty) {
      secondFreq = int.parse(secondHalf);
    }

    if (firstFreq < 30) {
      firstFreq = 30;
      if (secondFreq > 975) {
        secondFreq = 975;
      }
    } else if (firstFreq > 89) {
      firstFreq = 89;
      if (secondFreq > 975) {
        secondFreq = 975;
      }
    }
    int finalFrequency = 1;
    if (secondHalf.isNotEmpty) {
      int result = 0;
      result = secondFreq ~/ 25;
      int remaining = secondFreq % 25;
      if (remaining > 0) {
        result += 1;
      }
      if (remaining == 0) {
        finalFrequency = secondFreq;
      } else {
        finalFrequency = 25 * result;
      }
    }
    freq = "$firstFreq.$finalFrequency";
    return freq;
  }

  void setConvertedFrequency({required String freq}) {
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

  void setLowPower(bool value) {
    emit(
      XvSetupState(
          sec: state.sec,
          sel: state.sel,
          sq: state.sq,
          sdx: state.sdx,
          powLow: value,
          powHigh: state.powHigh,
          channelName: state.channelName,
          frequency: state.frequency,
          setChannel: state.setChannel,
          setFrequency: state.setFrequency),
    );
  }

  void setHighPower(bool value) {
    emit(
      XvSetupState(
          sec: state.sec,
          sel: state.sel,
          sq: state.sq,
          sdx: state.sdx,
          powLow: state.powLow,
          powHigh: value,
          channelName: state.channelName,
          frequency: state.frequency,
          setChannel: state.setChannel,
          setFrequency: state.setFrequency),
    );
  }
}
