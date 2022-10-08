import 'package:radio_set/presentation/cubits/barret_setup/cubit.dart';

class BarretSetupState {
  final String channelNumber;

  BarretSetupState({required this.channelNumber});
}

class BarretChannel extends BarretSetupCubit {
  final String channelNumber;

  BarretChannel({required this.channelNumber});
}
