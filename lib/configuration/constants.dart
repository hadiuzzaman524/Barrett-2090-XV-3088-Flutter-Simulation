import 'package:radio_set/services/model/xv_setup.dart';

import '../services/model/tutorial_model.dart';

class AppConstant {
  static final List<TutorialModel> barretFrequency = [
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
  ];
  static final List<TutorialModel> barretSellCall = [];
  static final List<TutorialModel> barretPowerSetup = [];

  static final List<TutorialModel> xvFrequency = [];
  static final List<TutorialModel> xvSellCall = [];
  static final List<TutorialModel> xvPowerSetup = [];

  static List<String> xvList = [];
  static List<XvSetupModel> xvSetupList = List<XvSetupModel>.filled(
    2,
    const XvSetupModel(
        sec: false,
        sel: false,
        sq: false,
        sdx: false,
        powLow: true,
        powHigh: false,
        channelName: '',
        frequency: ''),
  );

  static void addXvFirstDeviceSetup({required XvSetupModel setupModel}) {
    xvSetupList[0] = setupModel;
  }

  static void addXvSecondDeviceSetup({required XvSetupModel setupModel}) {
    xvSetupList[1] = setupModel;
  }

  static String addXvDevice({required String title}) {
    if (xvList.length < 2) {
      xvList.add(title);
      return "Device added";
    }
    return "You already add two devices";
  }

  static String deleteXvDevice({required int index}) {
    xvList.removeAt(index);
    if (index == 0) {
      xvSetupList[0] = const XvSetupModel(
          sec: false,
          sel: false,
          sq: false,
          sdx: false,
          powLow: true,
          powHigh: false,
          channelName: '',
          frequency: '');
    } else if (index == 1) {
      xvSetupList[1] = const XvSetupModel(
          sec: false,
          sel: false,
          sq: false,
          sdx: false,
          powLow: true,
          powHigh: false,
          channelName: '',
          frequency: '');
    }
    return "Device removed";
  }

  static final List<String> barretChannelNameList = [
    "Public",
    "Private",
    "Hadi",
  ];

  static final List<String> operatingMode = [
    "USB",
    "CW",
    "LSB",
    "FSK",
    "AM",
  ];
  static final List<String> powerSetting = [
    "High",
    "Medium",
    "Low",
  ];
  static final List<String> cellCallFormat = [
    "International",
    "None",
    "OEM",
    "CCIR",
  ];

  static final List<String> standardMenu = [
    "Identification",
    "Address Book",
    "Call History",
    "Display Option",
  ];
  static final List<String> secondMenu = [
    "General",
    "ALE Setting",
    "I/O Setting",
    "RF Setting",
    "Audio Setting",
    "Selcall Setting",
    "Mute Setting",
    "Scan Setting",
    "Scan Tables",
  ];
  static final List<String> ioSettingOptions = [
    "RS232Out",
    "Line Level",
    "Line Out Level",
    "GPS",
    "Antenna Type",
    "Ext Alarm Type"
  ];
  static final List<String> antennaType = [
    "910 Mobile Antenna",
    "Base Station",
    "2017 Automatic Tuner",
    " Linear with ATU",
    "Loop Antenna",
    "2019 Mobile Antenna",
    "Linear Amplifier",
    "911 Automatic Tuner"
  ];

  static final List<String> generalOption = [
    "Mic Up/ Down Keys",
    "Internal Modem",
    "Upload Pack",
    "Security Level",
    "Source Call Code",
    "Hopping Pin",
    "Option Installation",
    "B.I.T.E Test",
    "Set Date",
    "Set Clock",
    "Channel Labels",
    "Transmit Timeout",
    "Tx Over Beep",
  ];

  static final List<String> callOptions = [
    "Source Call",
    "Beacon Call",
    "Sel Call",
    "Tel Call",
    "Hang Call",
    "Page Call",
    "GPS Call",
    "Status Call",
  ];
}
