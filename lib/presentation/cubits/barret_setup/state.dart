import 'package:radio_set/presentation/cubits/barret_setup/cubit.dart';

class BarretSetupState {
  final String channelNumber;
  final String rxFrequency;
  final String txFrequency;
  final String channelName;
  final String operatingMode;
  final String powerSetting;
  final String cellCallFormat;
  final String standardMenu;
  final String secondMenu;
  final String ioSetting;
  final String antennaType;

  BarretSetupState({
    required this.channelNumber,
    required this.rxFrequency,
    required this.txFrequency,
    required this.channelName,
    required this.operatingMode,
    required this.powerSetting,
    required this.cellCallFormat,
    required this.secondMenu,
    required this.standardMenu,
    required this.antennaType,
    required this.ioSetting
  });
}

class BarretChannel extends BarretSetupCubit {
  final String channelNumber;

  BarretChannel({required this.channelNumber});
}
