import 'package:radio_set/services/model/barret_setup_model.dart';
import 'package:radio_set/services/model/xv_setup.dart';

import '../services/model/tutorial_model.dart';

class AppConstant {
  static final List<TutorialModel> barretFrequency = [
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
  ];
  static final List<TutorialModel> barretSellCall = [];
  static final List<TutorialModel> barretPowerSetup = [];

  static final List<TutorialModel> xvFrequency = [
    TutorialModel(details: """
১| সেট অন করা।
২| Prog Key প্রেস করে ডিসপ্লেতে "F" কাঁপানো।
৩| মনোনীত ফ্রিকোয়েন্সী টাইপ করা।
৪| Yes Key প্রেস করতে হবে যতক্ষণ পর্যন্ত ডিসপ্লেতে Prog লেখা না কাঁপবে।
৫| No Key একবার প্রেস করলে ফ্রিকোয়েন্সী সেট হবে।
    """, title: "    Simplex পদ্ধতিতে ফ্রিকোয়েন্সী লাগানোর নিয়মঃ"),
    TutorialModel(details: """
১| সেট অন করা।
২| Prog Key প্রেস করে ডিসপ্লেতে "F" কাঁপানো।
৩| Rx ফ্রিকোয়েন্সী টাইপ করা।
৪| Yes Key তে দুইবার প্রেস করি।
৫| Tx ফ্রিকোয়েন্সী টাইপ করি।
৬| পুনরায় Yes Key তে প্রেস করতে থাকি যতক্ষণ পর্যন্ত Prog লিখা ডিসপ্লেতে না কাঁপবে।
৭| No Key তে প্রেস করে বের হয়ে আসি।
৮| হ্যান্ডসেট প্রেস করলে SDX হবে।
    """, title: "SDX পদ্ধতিতে ফ্রিকোয়েন্সী লাগানোর নিয়মঃ"),
    TutorialModel(details: """
১। Prog Key এর উপর চাপ দিয়ে এবং  নির্ধারিত চ্যানেল নম্বরসহ Key চাপ দিতে হবে। নিশ্চিত  হবার জন্য Yes Key ক্লিক করতে হবে।
২। যথাযথ ও প্রয়োজনীয় ফ্রিকোয়েন্সী দিয়ে Key চাপা। 
৩। Yes কেয় চাপ দিয়ে সঠিক ফ্রিকোয়েন্সী নিশ্চয়তা পাওয়া যাবে।
৪। SDX, Yes Key দ্বারা অপারেশন  সংগে সংগে নিশ্চিত করা যাবে।
৫। SEL সংগে সংগে কনফার্ম বা বাতিল করার জন্য Yes বা No Key  ব্যবহার করতে হবে।
৬। SEC কে নিশ্চিত বা বাতিল করতে Yes বা No Key ব্যবহার করতে হবে। 
৭। SQ 150 কে নিশ্চিত বা বাতিল করতে Yes বা No Key ব্যবহার করতে হবে। 
৮। প্রোগ্রামিং সম্পূর্ণ হয়েছে বলে নিশ্চিত হওয়া যাবে যখন Prog লেভেল ব্লিংকিং করতে থাকবে এবং কনফার্ম করার জন্য Yes বা No Key ব্যবহার করতে হবে
    """, title: "নতুন চ্যানেল নির্বাচন ও প্রোগ্রাম করাঃ"),
  ];
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
    "ALE Call"
  ];

  static List<String> barretList = [];
  static List<BarretSetupModel> barretSetupList = List<BarretSetupModel>.filled(
    2,
    BarretSetupModel(
      operatingMode: '',
      callFormat: '',
      rxFrequency: '',
      txFrequency: '',
    ),
  );

  static void addBarretFirstDeviceSetup(
      {required BarretSetupModel setupModel}) {
    barretSetupList[0] = setupModel;
  }

  static void addBarretSecondDeviceSetup(
      {required BarretSetupModel setupModel}) {
    barretSetupList[1] = setupModel;
  }

  static String addBarretDevice({required String title}) {
    if (barretList.length < 2) {
      barretList.add(title);
      return "Device added";
    }
    return "You already add two devices";
  }

  static String deleteBarretDevice({required int index}) {
    barretList.removeAt(index);
    if (index == 0) {
      barretSetupList[0] = BarretSetupModel(
        operatingMode: '',
        callFormat: '',
        rxFrequency: '',
        txFrequency: '',
      );
    } else if (index == 1) {
      barretSetupList[1] = BarretSetupModel(
        operatingMode: '',
        callFormat: '',
        rxFrequency: '',
        txFrequency: '',
      );
    }
    return "Device removed";
  }
}
