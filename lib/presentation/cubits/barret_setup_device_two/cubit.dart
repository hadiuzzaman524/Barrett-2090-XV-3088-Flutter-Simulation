import 'package:bloc/bloc.dart';

import 'state.dart';

class BarretSetupDeviceTwoCubit extends Cubit<BarretSetupDeviceTwoState> {
  BarretSetupDeviceTwoCubit()
      : super(BarretSetupDeviceTwoState(
          channelNumber: "",
          rxFrequency: '',
          txFrequency: '',
          channelName: "Public",
          operatingMode: "USB",
          powerSetting: "High",
          cellCallFormat: "International",
          secondMenu: 'ALE Setting',
          standardMenu: 'Display Option',
          antennaType: '910 Mobile Antenna',
          ioSetting: 'RS232Out',
          generalOption: 'Mic Up/ Down Keys',
          callOption: 'Page Call',
        ));

  void setChannelNumber({required String channelNumber}) {
    if (state.channelNumber.length < 4) {
      emit(
        BarretSetupDeviceTwoState(
          channelNumber: state.channelNumber + channelNumber,
          rxFrequency: state.rxFrequency,
          txFrequency: state.txFrequency,
          channelName: state.channelName,
          operatingMode: state.operatingMode,
          powerSetting: state.powerSetting,
          cellCallFormat: state.cellCallFormat,
          secondMenu: state.secondMenu,
          standardMenu: state.standardMenu,
          antennaType: state.antennaType,
          ioSetting: state.ioSetting,
          generalOption: state.generalOption,
          callOption: state.callOption,
        ),
      );
    }
  }

  void clearChannelNumber() {
    emit(
      BarretSetupDeviceTwoState(
        channelNumber: "",
        rxFrequency: state.rxFrequency,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
        antennaType: state.antennaType,
        ioSetting: state.ioSetting,
        generalOption: state.generalOption,
        callOption: state.callOption,
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
        BarretSetupDeviceTwoState(
          rxFrequency: freq,
          channelNumber: state.channelNumber,
          txFrequency: state.txFrequency,
          channelName: state.channelName,
          operatingMode: state.operatingMode,
          powerSetting: state.powerSetting,
          cellCallFormat: state.cellCallFormat,
          secondMenu: state.secondMenu,
          standardMenu: state.standardMenu,
          antennaType: state.antennaType,
          ioSetting: state.ioSetting,
          generalOption: state.generalOption,
          callOption: state.callOption,
        ),
      );
    }
  }

  String frequencyConversion(String freq) {
    String firstHalf = "";
    String secondHalf = "";
    for (int i = 0; i < freq.length; i++) {
      if (i < 5) {
        firstHalf += freq[i];
      } else if (i > 5) {
        secondHalf += freq[i];
      }
    }

    int firstFreq = 0;
    int secondFreq = 0;
    print("First Half: $firstHalf");
    print("Second Half: $secondHalf");

    if (firstHalf.isNotEmpty) {
      firstFreq = int.parse(firstHalf);
    }
    if (secondHalf.isNotEmpty) {
      secondFreq = int.parse(secondHalf);
    }

    if (firstFreq < 1600) {
      firstFreq = 1600;
    } else if (firstFreq > 30000) {
      firstFreq = 30000;
    }
    int finalFrequency = 1;
    if (secondHalf.isNotEmpty) {
      int result = 0;
      result = secondFreq ~/ 10;
      int remaining = secondFreq % 10;
      if (remaining > 0) {
        result += 1;
      }
      if (remaining == 0) {
        finalFrequency = secondFreq;
      } else {
        finalFrequency = 10 * result;
      }
    }
    if (firstFreq == 30000) {
      finalFrequency = 0;
    }
    freq = "$firstFreq.$finalFrequency";
    print("Converted freq: $firstFreq $finalFrequency");

    return freq;
  }

  void setRxConvertedFrequency({required String freq}) {
    emit(BarretSetupDeviceTwoState(
      rxFrequency: freq,
      channelNumber: state.channelNumber,
      txFrequency: state.txFrequency,
      channelName: state.channelName,
      operatingMode: state.operatingMode,
      powerSetting: state.powerSetting,
      cellCallFormat: state.cellCallFormat,
      secondMenu: state.secondMenu,
      standardMenu: state.standardMenu,
      antennaType: state.antennaType,
      ioSetting: state.ioSetting,
      generalOption: state.generalOption,
      callOption: state.callOption,
    ));
  }

  void setTxConvertedFrequency({required String freq}) {
    emit(BarretSetupDeviceTwoState(
      rxFrequency: state.rxFrequency,
      channelNumber: state.channelNumber,
      txFrequency: freq,
      channelName: state.channelName,
      operatingMode: state.operatingMode,
      powerSetting: state.powerSetting,
      cellCallFormat: state.cellCallFormat,
      secondMenu: state.secondMenu,
      standardMenu: state.standardMenu,
      antennaType: state.antennaType,
      ioSetting: state.ioSetting,
      generalOption: state.generalOption,
      callOption: state.callOption,
    ));
    print("Success: $freq");
  }

  void clearRxFrequency() {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: "",
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
        antennaType: state.antennaType,
        ioSetting: state.ioSetting,
        generalOption: state.generalOption,
        callOption: state.callOption,
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
        BarretSetupDeviceTwoState(
          rxFrequency: state.rxFrequency,
          channelNumber: state.channelNumber,
          txFrequency: freq,
          channelName: state.channelName,
          operatingMode: state.operatingMode,
          powerSetting: state.powerSetting,
          cellCallFormat: state.cellCallFormat,
          secondMenu: state.secondMenu,
          standardMenu: state.standardMenu,
          antennaType: state.antennaType,
          ioSetting: state.ioSetting,
          generalOption: state.generalOption,
          callOption: state.callOption,
        ),
      );
    }
  }

  void clearTxFrequency() {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: "",
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
        antennaType: state.antennaType,
        ioSetting: state.ioSetting,
        generalOption: state.generalOption,
        callOption: state.callOption,
      ),
    );
  }

  void setChannelName({required String channelName}) {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
        antennaType: state.antennaType,
        ioSetting: state.ioSetting,
        generalOption: state.generalOption,
        callOption: state.callOption,
      ),
    );
  }

  void setOperatingMode({required String operatingMode}) {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
        antennaType: state.antennaType,
        ioSetting: state.ioSetting,
        generalOption: state.generalOption,
        callOption: state.callOption,
      ),
    );
  }

  void setPowerSettingMode({required String pwr}) {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: pwr,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
        antennaType: state.antennaType,
        ioSetting: state.ioSetting,
        generalOption: state.generalOption,
        callOption: state.callOption,
      ),
    );
  }

  void setSellCallFormat({required String fmt}) {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: fmt,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
        antennaType: state.antennaType,
        ioSetting: state.ioSetting,
        generalOption: state.generalOption,
        callOption: state.callOption,
      ),
    );
  }

  void setStandardMenu({required String menu}) {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: menu,
        antennaType: state.antennaType,
        ioSetting: state.ioSetting,
        generalOption: state.generalOption,
        callOption: state.callOption,
      ),
    );
  }

  void setSecondMenu({required String menu}) {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: menu,
        standardMenu: state.standardMenu,
        antennaType: state.antennaType,
        ioSetting: state.ioSetting,
        generalOption: state.generalOption,
        callOption: state.callOption,
      ),
    );
  }

  void setIoSetting({required String io}) {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
        antennaType: state.antennaType,
        ioSetting: io,
        generalOption: state.generalOption,
        callOption: state.callOption,
      ),
    );
  }

  void setAntennaType({required String antenna}) {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
        antennaType: antenna,
        ioSetting: state.ioSetting,
        generalOption: state.generalOption,
        callOption: state.callOption,
      ),
    );
  }

  void setGeneralOption({required String general}) {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
        antennaType: state.antennaType,
        ioSetting: state.ioSetting,
        generalOption: general,
        callOption: state.callOption,
      ),
    );
  }

  void setCallOption({required String call}) {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: state.secondMenu,
        standardMenu: state.standardMenu,
        antennaType: state.antennaType,
        ioSetting: state.ioSetting,
        generalOption: state.generalOption,
        callOption: call,
      ),
    );
  }

  void clearMenu() {
    emit(
      BarretSetupDeviceTwoState(
        rxFrequency: state.rxFrequency,
        channelNumber: state.channelNumber,
        txFrequency: state.txFrequency,
        channelName: state.channelName,
        operatingMode: state.operatingMode,
        powerSetting: state.powerSetting,
        cellCallFormat: state.cellCallFormat,
        secondMenu: 'ALE Setting',
        standardMenu: 'Display Option',
        antennaType: '910 Mobile Antenna',
        ioSetting: 'RS232Out',
        generalOption: 'Mic Up/ Down Keys',
        callOption: 'Page Call',
      ),
    );
  }
}
