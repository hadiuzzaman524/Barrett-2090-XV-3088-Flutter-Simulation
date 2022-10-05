import 'package:radio_set/services/model/xv_setup.dart';

class XvSetupState {
  final bool sec;
  final bool sel;
  final bool sq;
  final bool sdx;
  final bool powLow;
  final bool powHigh;
  final String channelName;
  final bool setChannel;
  final String frequency;
  final bool setFrequency;

  XvSetupState(
      {required this.sec,
      required this.sel,
      required this.sq,
      required this.sdx,
      required this.powLow,
      required this.powHigh,
      required this.channelName,
      required this.frequency,
      required this.setChannel,
      required this.setFrequency});
}
