import 'package:radio_set/presentation/cubits/barret_setup/cubit.dart';

class BarretSetupState {
  final String channelNumber;
  final String rxFrequency;
  final String txFrequency;
  final String channelName;
  final String operatingMode;
  final String powerSetting;
  final String cellCallFormat;

  BarretSetupState({
    required this.channelNumber,
    required this.rxFrequency,
    required this.txFrequency,
    required this.channelName,
    required this.operatingMode,
    required this.powerSetting,
    required this.cellCallFormat,
  });
}

class BarretChannel extends BarretSetupCubit {
  final String channelNumber;

  BarretChannel({required this.channelNumber});
}
