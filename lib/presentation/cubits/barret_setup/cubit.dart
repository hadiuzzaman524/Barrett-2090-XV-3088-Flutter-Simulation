import 'package:bloc/bloc.dart';

import 'state.dart';

class BarretSetupCubit extends Cubit<BarretSetupState> {
  BarretSetupCubit()
      : super(BarretSetupState(
          channelNumber: "",
          rxFrequency: '',
          txFrequency: '',
          channelName: "Public",
          operatingMode: "USB",
          powerSetting: "High",
          cellCallFormat: "International",
          secondMenu: '',
          standardMenu: 'Identification',
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
          secondMenu: state.secondMenu,
          standardMenu: state.standardMenu,
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
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
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
          secondMenu: state.secondMenu,
          standardMenu: state.standardMenu,
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
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
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
          secondMenu: state.secondMenu,
          standardMenu: state.standardMenu,
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
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
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
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
      ),
    );
  }

  void setOperatingMode({required String operatingMode}) {
    emit(
      BarretSetupState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
      ),
    );
  }

  void setPowerSettingMode({required String pwr}) {
    emit(
      BarretSetupState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: pwr,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
      ),
    );
  }

  void setSellCallFormat({required String fmt}) {
    emit(
      BarretSetupState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: fmt,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
      ),
    );
  }

  void setStandardMenu({required String menu}) {
    emit(
      BarretSetupState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: menu,
      ),
    );
  }

  void setSecondMenu({required String menu}) {
    emit(
      BarretSetupState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: menu,
        standardMenu: state.standardMenu,
      ),
    );
  }
}
