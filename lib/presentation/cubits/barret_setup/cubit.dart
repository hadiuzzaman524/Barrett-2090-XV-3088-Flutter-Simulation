import 'package:bloc/bloc.dart';

import 'state.dart';

class BarretSetupCubit extends Cubit<BarretSetupState> {
  BarretSetupCubit()
      : super(BarretSetupState(
          channelNumber: "",
          rxFrequency: '',
          txFrequency: '',
          channelName: "Public",
          operatingMode: "",
          powerSetting: "",
          cellCallFormat: "",
        ));

  void setChannelNumber({required String channelNumber}) {
    if (state.channelNumber.length < 4) {
      emit(
        BarretSetupState(
          channelNumber: state.channelNumber + channelNumber,
          rxFrequency: state.rxFrequency,
          txFrequency: state.txFrequency,
          channelName: state.channelName,
          operatingMode: state.operatingMode,
          powerSetting: state.powerSetting,
          cellCallFormat: state.cellCallFormat,
        ),
      );
    }
  }

  void clearChannelNumber() {
    emit(
      BarretSetupState(
        channelNumber: "",
        rxFrequency: state.rxFrequency,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
      ),
    );
  }

  void setRxFrequency({required String rx}) {
    String freq = "";

    String temp = state.rxFrequency + rx;

    for (int i = 0; i < temp.length; i++) {
      if (temp.length <= 9) {
        freq += temp[i];
      }
    }
    if (temp.length == 5) {
      freq = temp.replaceFirstMapped(
          RegExp(r".{5}"), (match) => "${match.group(0)}.");
    }
    if (temp.length <= 9) {
      emit(
        BarretSetupState(
          rxFrequency: freq,
          channelNumber: state.channelNumber,
          txFrequency: state.txFrequency,
          channelName: state.channelName,
          operatingMode: state.operatingMode,
          powerSetting: state.powerSetting,
          cellCallFormat: state.cellCallFormat,
        ),
      );
    }
  }

  void clearRxFrequency() {
    emit(
      BarretSetupState(
        rxFrequency: "",
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
      ),
    );
  }

  void setTxFrequency({required String tx}) {
    String freq = "";

    String temp = state.txFrequency + tx;

    for (int i = 0; i < temp.length; i++) {
      if (temp.length <= 9) {
        freq += temp[i];
      }
    }
    if (temp.length == 5) {
      freq = temp.replaceFirstMapped(
          RegExp(r".{5}"), (match) => "${match.group(0)}.");
    }
    if (temp.length <= 9) {
      emit(
        BarretSetupState(
          rxFrequency: state.rxFrequency,
          channelNumber: state.channelNumber,
          txFrequency: freq,
          channelName: state.channelName,
          operatingMode: state.operatingMode,
          powerSetting: state.powerSetting,
          cellCallFormat: state.cellCallFormat,
        ),
      );
    }
  }

  void clearTxFrequency() {
    emit(
      BarretSetupState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: "",
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
      ),
    );
  }

  void setChannelName({required String channelName}) {
    emit(
      BarretSetupState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
      ),
    );
  }
}
