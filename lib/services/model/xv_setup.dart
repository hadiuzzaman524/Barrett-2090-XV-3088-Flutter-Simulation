class XvSetupModel {
  final bool sec;
  final bool sel;
  final bool sq;
  final bool sdx;
  final bool powLow;
  final bool powHigh;
  final String channelName;
  final String frequency;

  XvSetupModel(
      {required this.sec,
      required this.sel,
      required this.sq,
      required this.sdx,
      required this.powLow,
      required this.powHigh,
      required this.channelName,
      required this.frequency});
}
