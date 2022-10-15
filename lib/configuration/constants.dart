import 'package:radio_set/services/model/barret_setup_model.dart';
import 'package:radio_set/services/model/xv_setup.dart';

import '../services/model/tutorial_model.dart';

class AppConstant {
  static final List<TutorialModel> barretFrequency = [
    TutorialModel(details: """
ক. পাওয়ার অন/অফ বাটনটি প্রেস করলে রেডিও অন হবে।
খ. অনুরুপভাবে পাওয়ার অন/অফ বাটনটি প্রেস করলে রেডিও অফ হবে।
""", title: "রেডিও অন/অফ করার নিয়মঃ"),
    TutorialModel(details: """
ক. 	Channel বাটন দ্বারাঃ
  (১)	Channel বাটন একবার প্রেস করি।কার্সর ডিসপ্লেতে দেখার পর কাঙ্ক্ষিত চ্যানেল নম্বর টাইপ করি।
  (২)	পুনরায় Channel বাটন একবার প্রেস করি।
খ. 	হান্ডসেটের চ্যানেল Up/Down  বাটন প্রেস করে কাঙ্ক্ষিত নম্বরে যেতে পারি।
""", title: "চ্যানেল পরিবরতন (দুই ভাবে করা যায়)"),
    TutorialModel(details: """
ক.	প্রথমে কাঙ্ক্ষিত চ্যানেল নম্বর আনিঃ
  (১)	Program বাটন প্রেস করি।
  (২)	Rx Freq দেই।
  (৩)	Program বাটন 2 বার প্রেস করি।
  (৪)	Tx Freq দেই(Ts  এবং Rx Freq  যদি একই হয় তাহলে ফ্রিকয়েন্সি দেয়ার প্রয়োজন নাই)
  (৫) Program বাটন প্রেস করি।
  (৬)	Up/Down বাটন দিয়ে Channel Label (চ্যানেলের নাম) সিলেক্ট করি 
  (৭) Program বাটন প্রেস করি।
  (৮) Up/Down বাটন দিয়ে Operating Mode USB/LSB?AM/CW/FSK দিয়ে সিলেক্ট করি। 
  (৯)	Program বাটন প্রেস করি।
  (১০) Up/Down বাটন দিয়ে Power Setting- High/Medium/Low Power  সিলেক্ট করি।
  (১১) Program বাটন প্রেস করি এবং Up/Down বাটন দিয়ে International সিলেক্ট করি।
  (১২) Program বাটন প্রেস করি।
খ.	এই ভাবে Step by Step Freq/Level/Mode/Power Setting/SellCall Format     (International) ইত্যাদি সম্পন্ন করি।

নোটঃ Tx Freq যদি ভিন্ন হয়, তাহলে Tx Freq দেওয়ার পর program বাটন ২ বার প্রেস করতে হবে।

""", title: "ফ্রিকয়েন্সি প্রোগ্রামিংঃ"),
    TutorialModel(details: """
ক.	Radio এর Manu বাটনে একবার প্রেস করি(Standard Menu Select করি)
খ.	Display তে  Identification আসবে।
গ.	Down বাটনে একবার প্রেস করি।
ঘ.	Enter বাটনে দুইবার প্রেস করি।	
ঙ.	Up/Down বাটন দিএ Antenna সিলেক্ট করি।যেমন Manpack এর জন্য                                                                                                                                             Whip/Long Wire Antenna সিলেক্ট করি। 
চ. 	Base Station(End Fed Dipole Antenna) এর জন্য 50 Ohm সিলেক্ট করি।
ছ.	Enter বাটনে প্রেস করি।	
জ.	Clear বাটনে দুইবার প্রেস করি।
""", title: "এন্টিনা সিলেকশনঃ  ম্যানপ্যাক রেডিও এর ক্ষেত্রে এন্টিনা সিলেকশনঃ"),
    TutorialModel(details: """
ক.	Manu বাটনে দুই সেকেন্ট চাপ দিয়ে রাখি
খ. 	Display তে General আসবে
গ. 	Up/Dawn বাটন দিয়ে I/O সেটিং অপশনে যাই
ঘ. 	Enter বাটন প্রেস করি
ঙ.	Up/Dawn বাটন দিয়ে Antenna Type অপশনে যাই
চ. 	Enter বাটন প্রেস করি
ছ. 	Up/Dawn বাটন দিয়ে 2019 Mobile Antenna Select করি
জ. Enter বাটন প্রেস করি
ঝ. 	Clear বাটন দুইবার প্রেস করে বেরিয়ে আসি
Note: গারিতে রেডিও শুধুমাত্র ১২ ভোল্ট সেকেন্ডারি ব্যাটারি দ্বারা চলবে

""", title: "ভেহিক্যাল এন্টিনা সিলেকশনঃ"),
  ];
  static final List<TutorialModel> barretSellCall = [
    TutorialModel(details: """
ক. 	Call বাটনে একবার প্রেস করি
খ. 	Up/Dawn বাটনের মাধ্যমে Sell Call/Beacons/Status Request/Page call- etc এর 
মধ্যে যে কলটি চাই সেই কলটি সিলেক্ট করি
গ. 	Enter বাটন প্রেস করি
ঘ. 	কলটি যে স্টেশনের করতে চাই সেই স্টেশনের( গন্তব্বস্থলের) ID দেই
ঙ. 	Call বাটন প্রেস করি
 Note: উপরের সবগুলো একই নিয়মে করা যাবে
""", title: "বিভিন্ন কল করার পদ্ধতি"),
    TutorialModel(details: """
ক. 	Call বাটন প্রেস করি
খ. 	Up/Dawn বাটন দিয়ে Sel Select করি
গ. 	Call বাটন প্রেস করি
ঘ. 	ডেসন্টিনেশন ( গন্তব্বস্থল) ID দেই
ঙ. 	Call বাটন প্রেস করি
(Revwetive Tone) এর জন্য অপেক্ষা করি ।Tone শোনা গেলে বোঝা যাবে Select সম্পন্ন হয়েছে)

""", title: "Sel Call করার নিয়মঃ"),
    TutorialModel(details: """
ক. 	Call বাটন প্রেস করি
খ. 	Up/Dawn বাটন দিয়ে Beacon কল সিলেক্ট করি
গ. 	Call বাটন প্রেস করি
ঘ. 	ডেসন্টিনেশন ( গন্তব্বস্থল) ID দেই
ঙ. 	Call বাটন প্রেস করি
""", title: "বিকন (Beacon) কল করার নিয়মঃ"),
    TutorialModel(details: """
ক. 	Call বাটন প্রেস করি
খ. 	Up/Dawn বাটন দিয়ে Page Call সিলেক্ট করি
গ. 	Call বাটন প্রেস করে কাঙ্ক্ষিত ( গন্তব্বস্থলের) নম্বর দেই
ঘ. 	Call বাটন প্রেস করি
ঙ. 	ডিসপ্লে তে প্রয়োজনীয় Message টাইপ করি।
চ. 	Call বাটন প্রেস করি
""", title: "Page Call(SMS) কল করার নিয়মঃ"),
    TutorialModel(details: """
ক. 	Call বাটন প্রেস করি
খ. 	Up/Dawn বাটন দিয়ে Status reques সিলেক্ট করি
গ. 	Enter বাটন প্রেস করি
ঘ. 	কলটি যে স্টেশনের করতে চাই সেই স্টেশনের( গন্তব্বস্থলের) ID দেই
ঙ. 	Call বাটন প্রেস করি
""", title: "Status request Call করার নিয়মঃ	"),
  ];
  static final List<TutorialModel> barretPowerSetup = [
    TutorialModel(details: """
ক.	Menu বাটনে একবার প্রেস করি
খ. 	Display তে Identification দেখাবে
গ. 	Enter একবারপ্রেস করি
ঘ. 	Display তে রেডিও এর বিভন্ন অপশন দেখাবে( Left Ges Right Scroll Key এর সাহায্যে)
যেমন: Txcvr Type: 2090 
S/N: 20900---- 
Options:123---- 
Software Version: 2.01 
DSP Version: 2.00 
Core Version: 2.00 
ATU Version: 1.04 
Antenna: Whip/L. Wire 
Sel Call IDs 
INT1: 1234 OME1:9876 
INT2: 123456 OME2:876543 
Battery Rx:15.2 
Battery Tx:14.0 
PA Temparature: 20° 
Charge: 86% 
Estimted Chargering Time 1 hr 57 Mins 
GPS Corrdinates 
Lat: 32° 05.727S 
Long: 115° 48.043E 

Press Clear to Return 
""", title: "Standard Menu  এর Identification:"),
    TutorialModel(details: """
ক. Menu বাটন একবার প্রেস  করি 
খ. Enter বাটন একবার প্রেস করি।
গ. Display-তে রেডিও এর বিভিন্ন অপশন দেখাবে। কিপ্যাডে > ৩ নং বাটনটি পর পর প্রেস করতে থাকলে গুরুত্বপূর্ণ দুই টি অপশন দেখাবে। 
(১) রেডিও এর Self ID (নিজের Selcall ID) 
(২) ব্যাটারীর Rx ও Tx ভোল্টেজ। 
(৩)ব্যাটারী কত সময় চলবে। 
Note: এ পদ্ধতিতে কোন মিটার ছাড়াই ব্যাটারী কন্ডিশন পরীক্ষা করা যাবে। 
""", title: "Battery Condition/ Self ID (নিজের আইডি) জানার নিয়মঃ "),
    TutorialModel(details: """
ক. 	Menu বাটন দুই সেকেন্ড চাপ দিয়ে ধরে রাখি। 
খ. 	Display তে  General অপশন দেখাবে।
গ. 	Enter বাটন একবার প্রেস করি 
ঘ. 	Up/Dawn বাটন দিয়ে BITE অপশনে যাই
ঙ. 	Enter বাটন একবার প্রেস করি
চ. 	BITE Test Passed না আসা পর্যন্ত অপেক্ষা করি
ছ. 	কোন সমস্যা থাকলে Failed দেখাবেক
জ।	Clear বাটন দুই বার প্রেস করে বের হয়ে আসি।
""", title: "Built-in Test Equipment (BITE) পরীক্ষা করার নিয়ম ।"),
  ];

  static final List<TutorialModel> xvFrequencySimplex = [
    TutorialModel(details: """
১| সেট অন করা।
২| Prog Key প্রেস করে ডিসপ্লেতে "F" কাঁপানো।
৩| মনোনীত ফ্রিকোয়েন্সী টাইপ করা।
৪| Yes Key প্রেস করতে হবে যতক্ষণ পর্যন্ত ডিসপ্লেতে Prog লেখা না কাঁপবে।
৫| No Key একবার প্রেস করলে ফ্রিকোয়েন্সী সেট হবে।
    """, title: "Simplex পদ্ধতিতে ফ্রিকোয়েন্সী লাগানোর নিয়মঃ"),
  ];
  static final List<TutorialModel> xvFrequencySdx = [
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
  ];
  static final List<TutorialModel> xvFrequencyNew = [
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
    "Munif",
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
