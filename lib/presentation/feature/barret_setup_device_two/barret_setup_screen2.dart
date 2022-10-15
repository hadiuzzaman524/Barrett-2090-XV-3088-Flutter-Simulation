import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../services/model/barret_setup_model.dart';
import '../../cubits/barret_setup_device_two/cubit.dart';
import '../../cubits/barret_setup_device_two/state.dart';
import '../../widgets/barret_button_row.dart';
import 'antenna_type2.dart';
import 'call_option2.dart';
import 'calling_number2.dart';
import 'channel_name2.dart';
import 'package:radio_set/configuration/constants.dart';

import 'general_option2.dart';
import 'identification2.dart';
import 'io_setting2.dart';
import 'menu_option2.dart';
import 'operating_mode2.dart';
import 'power_setting2.dart';
import 'rx_frequency2.dart';
import 'second_menu_option2.dart';
import 'sell_call2.dart';
import 'success_program2.dart';
import 'text_container2.dart';
import 'tx_frequency2.dart';

class BarretSetupDeviceTwoScreen extends StatefulWidget {
  final VoidCallback isConfigured;

  const BarretSetupDeviceTwoScreen({Key? key, required this.isConfigured})
      : super(key: key);

  @override
  State<BarretSetupDeviceTwoScreen> createState() =>
      _BarretSetupDeviceTwoScreenState();
}

class _BarretSetupDeviceTwoScreenState
    extends State<BarretSetupDeviceTwoScreen> {
  bool setChannel = false;
  int pressProgramButton = 0;
  bool clearRxFrequency = true;
  bool clearTxFrequency = true;

  int channelIndex = 0;
  int operatingModeIndex = 0;
  int powerSettingIndex = 0;
  int sellCallFormatIndex = 0;
  int ioSettingIndex = 0;
  int antennaTypeIndex = 0;
  int firstMenuIndex = 0;
  int secondMenuIndex = 0;
  int generalOptionIndex = 0;
  int callOptionIndex = 0;

  bool showFirstMenu = false;
  bool showSecondMenu = false;

  bool showIoSetting = false;
  bool isSettingIo = false;
  bool isGeneralOption = false;
  bool showGeneralOption = false;
  bool showAntennaType = false;
  bool isAntennaType = false;
  bool selectAntenna = false;

  bool showCallingNumberTaker = false;
  bool showCall = false;
  bool showIdentification = false;
  bool isIdentification = false;
  int identificationIndex = 0;

  @override
  Widget build(BuildContext context) {
    print("Screen 2");
    final barretCubit = context.read<BarretSetupDeviceTwoCubit>();
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 30),
      decoration: const BoxDecoration(
        color: Colors.black54,
      ),
      child: Column(
        children: [
          Card(
            elevation: 7,
            child: Container(
              color: Colors.blueGrey,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Container(
                height: 220,
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffDCDCDE),
                  border: Border.all(color: Colors.white30, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
                child: pressProgramButton == 1
                    ? GetRxFrequency(
                        pressProgramButton: pressProgramButton,
                      )
                    : (pressProgramButton == 2)
                        ? GetTxFrequency(
                            pressProgramButton: pressProgramButton,
                          )
                        : (pressProgramButton == 3)
                            ? ChannelName(
                                pressProgramButton: pressProgramButton,
                              )
                            : (pressProgramButton == 4)
                                ? BarretOperatingMode(
                                    pressProgramButton: pressProgramButton)
                                : (pressProgramButton == 5)
                                    ? PowerSetting(
                                        pressProgramButton: pressProgramButton)
                                    : (pressProgramButton == 6)
                                        ? SellCallFormat(
                                            pressProgramButton:
                                                pressProgramButton,
                                          )
                                        : (pressProgramButton == 7)
                                            ? SuccessProgram(
                                                back: () {
                                                  setState(() {
                                                    pressProgramButton += 1;
                                                  });
                                                },
                                              )
                                            : showFirstMenu
                                                ? const MenuOption()
                                                : showIdentification
                                                    ? Identification(
                                                        identificationIndex:
                                                            identificationIndex,
                                                      )
                                                    : showSecondMenu
                                                        ? const SecondMenuOption()
                                                        : showGeneralOption
                                                            ? const GeneralOption()
                                                            : showIoSetting
                                                                ? const IoSetting()
                                                                : showAntennaType
                                                                    ? AntennaType(
                                                                        success:
                                                                            selectAntenna)
                                                                    : showCall
                                                                        ? const CallOption()
                                                                        : showCallingNumberTaker
                                                                            ? const CallingNumberTaker()
                                                                            : BlocBuilder<BarretSetupDeviceTwoCubit,
                                                                                BarretSetupDeviceTwoState>(
                                                                                builder: (context, state) {
                                                                                  return Column(
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        children: [
                                                                                          const Text(
                                                                                            "Channel:",
                                                                                            style: TextStyle(
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontSize: 25,
                                                                                            ),
                                                                                          ),
                                                                                          const SizedBox(
                                                                                            width: 8,
                                                                                          ),
                                                                                          Text(
                                                                                            state.channelNumber,
                                                                                            style: const TextStyle(
                                                                                              fontSize: 24,
                                                                                              fontWeight: FontWeight.bold,
                                                                                            ),
                                                                                          ),
                                                                                          setChannel
                                                                                              ? const BlinkText(
                                                                                                  "_",
                                                                                                  style: TextStyle(
                                                                                                    fontSize: 24,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                  ),
                                                                                                )
                                                                                              : const Text(""),
                                                                                        ],
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Row(
                                                                                          children: [
                                                                                            Image.asset(
                                                                                              "images/rx.gif",
                                                                                              height: 100,
                                                                                              width: 100,
                                                                                            ),
                                                                                            const SizedBox(width: 8),
                                                                                            Expanded(
                                                                                              child: Column(
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  const SizedBox(height: 12),
                                                                                                  Text(
                                                                                                    state.rxFrequency.isEmpty ? "00000.000 KHz" : "${state.rxFrequency} KHz",
                                                                                                    style: const TextStyle(
                                                                                                      fontSize: 24,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
                                                                                                  ),
                                                                                                  const SizedBox(
                                                                                                    height: 12,
                                                                                                  ),
                                                                                                  Text(
                                                                                                    state.channelName,
                                                                                                    style: const TextStyle(
                                                                                                      fontSize: 26,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
                                                                                                  ),
                                                                                                  const SizedBox(
                                                                                                    height: 8,
                                                                                                  ),
                                                                                                  Row(
                                                                                                    children: [
                                                                                                      TextContainer(
                                                                                                        title: state.operatingMode,
                                                                                                      ),
                                                                                                      const SizedBox(
                                                                                                        width: 8,
                                                                                                      ),
                                                                                                      TextContainer(
                                                                                                        title: state.powerSetting,
                                                                                                      ),
                                                                                                      const SizedBox(
                                                                                                        width: 8,
                                                                                                      ),
                                                                                                      TextContainer(
                                                                                                        title: state.cellCallFormat,
                                                                                                      ),
                                                                                                    ],
                                                                                                  )
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              ),
              ),
            ),
          ),
          Container(
            color: const Color(0xffededed),
            height: 20,
          ),
          Expanded(
            child: Container(
              color: Colors.black54,
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 8),
                    BarretButtonRow(
                      firstButtonImageUrl: "images/menu.PNG",
                      secondButtonImageUrl: 'images/clear.PNG',
                      thirdButtonImageUrl: 'images/prog.PNG',

                      /// menu long press
                      onLongTapFirstButton: () {
                        barretCubit.clearMenu();
                        setState(() {
                          showSecondMenu = true;
                          showFirstMenu = false;
                        });
                      },

                      ///menu
                      onTapFirstButton: () {
                        barretCubit.clearMenu();
                        setState(() {
                          showFirstMenu = true;
                          showSecondMenu = false;
                        });
                      },

                      ///clear
                      onTapSecondButton: () {
                        if (selectAntenna) {
                          setState(() {
                            selectAntenna = false;
                          });
                        }
                        if (showAntennaType) {
                          setState(() {
                            showAntennaType = false;
                            showIoSetting = true;
                          });
                        }
                        if (showGeneralOption) {
                          setState(() {
                            showGeneralOption = false;
                            showSecondMenu = true;
                          });
                        }
                        if (showIoSetting) {
                          setState(() {
                            showSecondMenu = true;
                          });
                        }
                        if (showCall) {
                          setState(() {
                            showCall = false;
                          });
                        }
                        if (showCallingNumberTaker) {
                          setState(() {
                            showCallingNumberTaker = false;
                            showCall = true;
                          });
                        }
                        if (showIdentification) {
                          setState(() {
                            showIdentification = false;
                            showFirstMenu = true;
                          });
                        }

                        /// end of the button condition
                        if (showSecondMenu || showFirstMenu) {
                          setState(() {
                            showFirstMenu = false;
                            showSecondMenu = false;
                            showIoSetting = false;
                            isSettingIo = false;
                            isGeneralOption = false;
                            showGeneralOption = false;
                            showAntennaType = false;
                            isAntennaType = false;
                            selectAntenna = false;
                            showCallingNumberTaker = false;
                            showCall = false;
                            showIdentification = false;
                            isIdentification = false;
                          });
                        }
                      },

                      ///prog
                      onTapThirdButton: () {
                        final state =
                            context.read<BarretSetupDeviceTwoCubit>().state;
                        setState(() {
                          pressProgramButton += 1;
                        });
                        if (pressProgramButton == 2) {
                          final String r = barretCubit
                              .frequencyConversion(state.rxFrequency);
                          //converted freq
                          barretCubit.setRxConvertedFrequency(freq: r);
                          print("Rx: ${state.rxFrequency}");
                          barretCubit.setTxFrequency(tx: r);
                        }
                        if(pressProgramButton==3){
                          print("Converted");
                        }
                        print("Rx: ${state.rxFrequency}");
                        print("Tx: ${state.txFrequency}");
                        if (pressProgramButton == 7) {
                          final state =
                              context.read<BarretSetupDeviceTwoCubit>().state;
                          AppConstant.addBarretSecondDeviceSetup(
                              setupModel: BarretSetupModel(
                                  operatingMode: state.operatingMode,
                                  callFormat: state.cellCallFormat,
                                  rxFrequency: state.rxFrequency,
                                  txFrequency: state.txFrequency));
                          widget.isConfigured();
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Information Saved!")));
                        }
                      },
                    ),
                    BarretButtonRow(
                      firstButtonImageUrl: "images/one.PNG",
                      secondButtonImageUrl: 'images/two.PNG',
                      thirdButtonImageUrl: 'images/three.PNG',

                      ///one
                      onTapFirstButton: () {
                        final state =
                            context.read<BarretSetupDeviceTwoCubit>().state;

                        if (setChannel) {
                          barretCubit.setChannelNumber(channelNumber: "1");
                        }
                        //rx
                        if (pressProgramButton == 1) {
                          barretCubit.setRxFrequency(rx: "1");
                        }
                        if (pressProgramButton == 1 && clearRxFrequency) {
                          barretCubit.clearRxFrequency();
                          barretCubit.setRxFrequency(rx: "1");
                          setState(() {
                            clearRxFrequency = false;
                          });
                        }

                        // Tx frequency
                        if (pressProgramButton == 2) {
                          barretCubit.setTxFrequency(tx: "1");
                        }
                        if (pressProgramButton == 2 && clearTxFrequency) {
                          barretCubit.clearTxFrequency();
                          barretCubit.setTxFrequency(tx: "1");
                          setState(() {
                            clearTxFrequency = false;
                          });
                        }
                        print(state.rxFrequency);
                        print(state.txFrequency);
                        if (showIdentification) {
                          if (identificationIndex > 0) {
                            setState(() {
                              identificationIndex -= 1;
                            });
                          }
                        }
                      },

                      ///two
                      onTapSecondButton: () {
                        if (setChannel) {
                          barretCubit.setChannelNumber(channelNumber: "2");
                        }
                        //rx
                        if (pressProgramButton == 1) {
                          barretCubit.setRxFrequency(rx: "2");
                        }
                        if (pressProgramButton == 1 && clearRxFrequency) {
                          barretCubit.clearRxFrequency();
                          barretCubit.setRxFrequency(rx: "2");
                          setState(() {
                            clearRxFrequency = false;
                          });
                        }

                        // Tx frequency
                        if (pressProgramButton == 2) {
                          barretCubit.setTxFrequency(tx: "2");
                        }
                        if (pressProgramButton == 2 && clearTxFrequency) {
                          barretCubit.clearTxFrequency();
                          barretCubit.setTxFrequency(tx: "2");
                          setState(() {
                            clearTxFrequency = false;
                          });
                        }
                      },

                      ///three
                      onTapThirdButton: () {
                        if (setChannel) {
                          barretCubit.setChannelNumber(channelNumber: "3");
                        }
                        if (pressProgramButton == 1) {
                          barretCubit.setRxFrequency(rx: "3");
                        }
                        if (pressProgramButton == 1 && clearRxFrequency) {
                          barretCubit.clearRxFrequency();
                          barretCubit.setRxFrequency(rx: "3");
                          setState(() {
                            clearRxFrequency = false;
                          });
                        }
                        // Tx frequency
                        if (pressProgramButton == 2) {
                          barretCubit.setTxFrequency(tx: "3");
                        }
                        if (pressProgramButton == 2 && clearTxFrequency) {
                          barretCubit.clearTxFrequency();
                          barretCubit.setTxFrequency(tx: "3");
                          setState(() {
                            clearTxFrequency = false;
                          });
                        }
                        if (showIdentification) {
                          if (identificationIndex < 6) {
                            setState(() {
                              identificationIndex += 1;
                            });
                          }
                        }
                      },
                    ),
                    BarretButtonRow(
                      firstButtonImageUrl: "images/four.png",
                      secondButtonImageUrl: 'images/five.png',
                      thirdButtonImageUrl: 'images/six.png',

                      ///four
                      onTapFirstButton: () {
                        if (setChannel) {
                          barretCubit.setChannelNumber(channelNumber: "4");
                        }
                        if (pressProgramButton == 1 ) {
                          barretCubit.setRxFrequency(rx: "4");
                        }
                        if (pressProgramButton == 1 && clearRxFrequency) {
                          barretCubit.clearRxFrequency();
                          barretCubit.setRxFrequency(rx: "4");
                          setState(() {
                            clearRxFrequency = false;
                          });
                        }
                        // Tx frequency
                        if (pressProgramButton == 2) {
                          barretCubit.setTxFrequency(tx: "4");
                        }
                        if (pressProgramButton == 2 && clearTxFrequency) {
                          barretCubit.clearTxFrequency();
                          barretCubit.setTxFrequency(tx: "4");
                          setState(() {
                            clearTxFrequency = false;
                          });
                        }
                      },

                      ///five
                      onTapSecondButton: () {
                        if (setChannel) {
                          barretCubit.setChannelNumber(channelNumber: "5");
                        }
                        if (pressProgramButton == 1) {
                          barretCubit.setRxFrequency(rx: "5");
                        }
                        if (pressProgramButton == 1 && clearRxFrequency) {
                          barretCubit.clearRxFrequency();
                          barretCubit.setRxFrequency(rx: "5");
                          setState(() {
                            clearRxFrequency = false;
                          });
                        }
                        // Tx frequency
                        if (pressProgramButton == 2) {
                          barretCubit.setTxFrequency(tx: "5");
                        }
                        if (pressProgramButton == 2 && clearTxFrequency) {
                          barretCubit.clearTxFrequency();
                          barretCubit.setTxFrequency(tx: "5");
                          setState(() {
                            clearTxFrequency = false;
                          });
                        }
                      },

                      ///six
                      onTapThirdButton: () {
                        if (setChannel) {
                          barretCubit.setChannelNumber(channelNumber: "6");
                        }
                        if (pressProgramButton == 1 ) {
                          barretCubit.setRxFrequency(rx: "6");
                        }
                        if (pressProgramButton == 1 && clearRxFrequency) {
                          barretCubit.clearRxFrequency();
                          barretCubit.setRxFrequency(rx: "6");
                          setState(() {
                            clearRxFrequency = false;
                          });
                        }

                        // Tx frequency
                        if (pressProgramButton == 2) {
                          barretCubit.setTxFrequency(tx: "6");
                        }
                        if (pressProgramButton == 2 && clearTxFrequency) {
                          barretCubit.clearTxFrequency();
                          barretCubit.setTxFrequency(tx: "6");
                          setState(() {
                            clearTxFrequency = false;
                          });
                        }
                      },
                    ),
                    BarretButtonRow(
                      firstButtonImageUrl: "images/seven.png",
                      secondButtonImageUrl: 'images/eight.png',
                      thirdButtonImageUrl: 'images/nine.png',

                      ///seven
                      onTapFirstButton: () {
                        if (setChannel) {
                          barretCubit.setChannelNumber(channelNumber: "7");
                        }
                        if (pressProgramButton == 1 ) {
                          barretCubit.setRxFrequency(rx: "7");
                        }
                        if (pressProgramButton == 1 && clearRxFrequency) {
                          barretCubit.clearRxFrequency();
                          barretCubit.setRxFrequency(rx: "7");
                          setState(() {
                            clearRxFrequency = false;
                          });
                        }
                        // Tx frequency
                        // Tx frequency
                        if (pressProgramButton == 2) {
                          barretCubit.setTxFrequency(tx: "7");
                        }
                        if (pressProgramButton == 2 && clearTxFrequency) {
                          barretCubit.clearTxFrequency();
                          barretCubit.setTxFrequency(tx: "7");
                          setState(() {
                            clearTxFrequency = false;
                          });
                        }
                      },

                      ///eight
                      onTapSecondButton: () {
                        if (setChannel) {
                          barretCubit.setChannelNumber(channelNumber: "8");
                        }
                        if (pressProgramButton == 1) {
                          barretCubit.setRxFrequency(rx: "8");
                        }
                        if (pressProgramButton == 1 && clearRxFrequency) {
                          barretCubit.clearRxFrequency();
                          barretCubit.setRxFrequency(rx: "8");
                          setState(() {
                            clearRxFrequency = false;
                          });
                        }
                        // Tx frequency
                        if (pressProgramButton == 2) {
                          barretCubit.setTxFrequency(tx: "8");
                        }
                        if (pressProgramButton == 2 && clearTxFrequency) {
                          barretCubit.clearTxFrequency();
                          barretCubit.setTxFrequency(tx: "8");
                          setState(() {
                            clearTxFrequency = false;
                          });
                        }
                      },

                      ///nine
                      onTapThirdButton: () {
                        if (setChannel) {
                          barretCubit.setChannelNumber(channelNumber: "9");
                        }
                        if (pressProgramButton == 1) {
                          barretCubit.setRxFrequency(rx: "9");
                        }
                        if (pressProgramButton == 1 && clearRxFrequency) {
                          barretCubit.clearRxFrequency();
                          barretCubit.setRxFrequency(rx: "9");
                          setState(() {
                            clearRxFrequency = false;
                          });
                        }
                        // Tx frequency
                        if (pressProgramButton == 2) {
                          barretCubit.setTxFrequency(tx: "9");
                        }
                        if (pressProgramButton == 2 && clearTxFrequency) {
                          barretCubit.clearTxFrequency();
                          barretCubit.setTxFrequency(tx: "9");
                          setState(() {
                            clearTxFrequency = false;
                          });
                        }
                      },
                    ),
                    BarretButtonRow(
                      firstButtonImageUrl: "images/tune.png",
                      secondButtonImageUrl: 'images/zero.png',
                      thirdButtonImageUrl: 'images/chan.png',

                      ///tune
                      onTapFirstButton: () {},

                      ///zero
                      onTapSecondButton: () {
                        if (setChannel) {
                          barretCubit.setChannelNumber(channelNumber: "0");
                        }
                        if (pressProgramButton == 1) {
                          barretCubit.setRxFrequency(rx: "0");
                        }
                        if (pressProgramButton == 1 && clearRxFrequency) {
                          barretCubit.clearRxFrequency();
                          barretCubit.setRxFrequency(rx: "0");
                          setState(() {
                            clearRxFrequency = false;
                          });
                        }
                        // Tx frequency
                        if (pressProgramButton == 2) {
                          barretCubit.setTxFrequency(tx: "0");
                        }
                        if (pressProgramButton == 2 && clearTxFrequency) {
                          barretCubit.clearTxFrequency();
                          barretCubit.setTxFrequency(tx: "0");
                          setState(() {
                            clearTxFrequency = false;
                          });
                        }
                      },

                      ///channnel
                      onTapThirdButton: () {
                        setState(() {
                          setChannel = !setChannel;
                        });
                        if (setChannel) {
                          barretCubit.clearChannelNumber();
                        }
                      },
                    ),
                    BarretButtonRow(
                      firstButtonImageUrl: "images/lside.png",
                      secondButtonImageUrl: 'images/danger.png',
                      thirdButtonImageUrl: 'images/rside.png',
                      onTapFirstButton: () {},
                      onTapSecondButton: () {},
                      onTapThirdButton: () {},
                    ),
                    BarretButtonRow(
                      firstButtonImageUrl: "images/upper.png",
                      secondButtonImageUrl: 'images/call.png',
                      thirdButtonImageUrl: 'images/volplus.png',

                      // up
                      onTapFirstButton: () {
                        if (pressProgramButton == 3) {
                          channelIndex += 1;
                          if (channelIndex >=
                              AppConstant.barretChannelNameList.length) {
                            setState(() {
                              channelIndex = 0;
                            });
                          }
                          barretCubit.setChannelName(
                              channelName: AppConstant
                                  .barretChannelNameList[channelIndex]);
                        }
                        // operating mode
                        if (pressProgramButton == 4) {
                          operatingModeIndex += 1;
                          if (operatingModeIndex >=
                              AppConstant.operatingMode.length) {
                            setState(() {
                              operatingModeIndex = 0;
                            });
                          }
                          barretCubit.setOperatingMode(
                              operatingMode: AppConstant
                                  .operatingMode[operatingModeIndex]);
                        }
                        if (pressProgramButton == 5) {
                          powerSettingIndex += 1;
                          if (powerSettingIndex >=
                              AppConstant.powerSetting.length) {
                            setState(() {
                              powerSettingIndex = 0;
                            });
                          }
                          barretCubit.setPowerSettingMode(
                              pwr: AppConstant.powerSetting[powerSettingIndex]);
                        }

                        if (pressProgramButton == 6) {
                          sellCallFormatIndex += 1;
                          if (sellCallFormatIndex >=
                              AppConstant.cellCallFormat.length) {
                            setState(() {
                              sellCallFormatIndex = 0;
                            });
                          }
                          barretCubit.setSellCallFormat(
                              fmt: AppConstant
                                  .cellCallFormat[sellCallFormatIndex]);
                        }
                        if (showFirstMenu) {
                          firstMenuIndex += 1;
                          if (firstMenuIndex >=
                              AppConstant.standardMenu.length) {
                            setState(() {
                              firstMenuIndex = 0;
                            });
                          }
                          barretCubit.setStandardMenu(
                              menu: AppConstant.standardMenu[firstMenuIndex]);
                        }
                        if (showSecondMenu) {
                          secondMenuIndex += 1;
                          if (secondMenuIndex >=
                              AppConstant.secondMenu.length) {
                            setState(() {
                              secondMenuIndex = 0;
                            });
                          }
                          barretCubit.setSecondMenu(
                              menu: AppConstant.secondMenu[secondMenuIndex]);
                        }

                        if (showIoSetting) {
                          ioSettingIndex += 1;
                          if (ioSettingIndex >=
                              AppConstant.ioSettingOptions.length) {
                            setState(() {
                              ioSettingIndex = 0;
                            });
                          }
                          barretCubit.setIoSetting(
                              io: AppConstant.ioSettingOptions[ioSettingIndex]);
                        }
                        if (showAntennaType) {
                          antennaTypeIndex += 1;
                          if (antennaTypeIndex >=
                              AppConstant.antennaType.length) {
                            setState(() {
                              antennaTypeIndex = 0;
                            });
                          }
                          barretCubit.setAntennaType(
                              antenna:
                                  AppConstant.antennaType[antennaTypeIndex]);
                        }

                        if (showGeneralOption) {
                          generalOptionIndex += 1;
                          if (generalOptionIndex >=
                              AppConstant.generalOption.length) {
                            setState(() {
                              generalOptionIndex = 0;
                            });
                          }
                          barretCubit.setGeneralOption(
                              general: AppConstant
                                  .generalOption[generalOptionIndex]);
                        }
                        if (showCall) {
                          callOptionIndex += 1;
                          if (callOptionIndex >=
                              AppConstant.callOptions.length) {
                            setState(() {
                              callOptionIndex = 0;
                            });
                          }
                          barretCubit.setCallOption(
                              call: AppConstant.callOptions[callOptionIndex]);
                        }
                      },

                      /// call button
                      onTapSecondButton: () {
                        if (!showCall) {
                          setState(() {
                            showIoSetting = false;
                            isSettingIo = false;
                            isGeneralOption = false;
                            showGeneralOption = false;
                            showAntennaType = false;
                            isAntennaType = false;
                            selectAntenna = false;
                            showCall = true;
                          });
                        }
                      },
                      onTapThirdButton: () {},
                    ),
                    BlocListener<BarretSetupDeviceTwoCubit,
                        BarretSetupDeviceTwoState>(
                      listener: (context, state) {
                        // TODO: implement listener}
                        if (state.standardMenu == "Identification") {
                          setState(() {
                            isIdentification = true;
                          });
                        }
                        if (state.secondMenu == "I/O Setting") {
                          setState(() {
                            isSettingIo = true;
                            isGeneralOption = false;
                            isAntennaType = false;
                            isIdentification = false;
                          });
                        }
                        if (state.ioSetting == "Antenna Type") {
                          setState(() {
                            isAntennaType = true;
                            isGeneralOption = false;
                          });
                        } else if (state.secondMenu == "General") {
                          setState(() {
                            isGeneralOption = true;
                            isSettingIo = false;
                            isAntennaType = false;
                            isIdentification = false;
                          });
                        }
                      },
                      child: BarretButtonRow(
                        firstButtonImageUrl: "images/lower.png",
                        secondButtonImageUrl: 'images/enter.png',
                        thirdButtonImageUrl: 'images/volminus.png',
                        // down
                        onTapFirstButton: () {
                          if (pressProgramButton == 3) {
                            channelIndex += 1;
                            if (channelIndex >=
                                AppConstant.barretChannelNameList.length) {
                              setState(() {
                                channelIndex = 0;
                              });
                            }
                            barretCubit.setChannelName(
                                channelName: AppConstant
                                    .barretChannelNameList[channelIndex]);
                          }
                          // operating mode
                          if (pressProgramButton == 4) {
                            operatingModeIndex += 1;
                            if (operatingModeIndex >=
                                AppConstant.operatingMode.length) {
                              setState(() {
                                operatingModeIndex = 0;
                              });
                            }
                            barretCubit.setOperatingMode(
                                operatingMode: AppConstant
                                    .operatingMode[operatingModeIndex]);
                          }
                          // power setting
                          if (pressProgramButton == 5) {
                            powerSettingIndex += 1;
                            if (powerSettingIndex >=
                                AppConstant.powerSetting.length) {
                              setState(() {
                                powerSettingIndex = 0;
                              });
                            }
                            barretCubit.setPowerSettingMode(
                                pwr: AppConstant
                                    .powerSetting[powerSettingIndex]);
                          }
                          if (pressProgramButton == 6) {
                            sellCallFormatIndex += 1;
                            if (sellCallFormatIndex >=
                                AppConstant.cellCallFormat.length) {
                              setState(() {
                                sellCallFormatIndex = 0;
                              });
                            }
                            barretCubit.setSellCallFormat(
                                fmt: AppConstant
                                    .cellCallFormat[sellCallFormatIndex]);
                          }
                          if (showFirstMenu) {
                            firstMenuIndex += 1;
                            if (firstMenuIndex >=
                                AppConstant.standardMenu.length) {
                              setState(() {
                                firstMenuIndex = 0;
                              });
                            }
                            barretCubit.setStandardMenu(
                                menu: AppConstant.standardMenu[firstMenuIndex]);
                          }
                          if (showSecondMenu) {
                            secondMenuIndex += 1;
                            if (secondMenuIndex >=
                                AppConstant.secondMenu.length) {
                              setState(() {
                                secondMenuIndex = 0;
                              });
                            }
                            barretCubit.setSecondMenu(
                                menu: AppConstant.secondMenu[secondMenuIndex]);
                          }
                          if (showIoSetting) {
                            ioSettingIndex += 1;
                            if (ioSettingIndex >=
                                AppConstant.ioSettingOptions.length) {
                              setState(() {
                                ioSettingIndex = 0;
                              });
                            }
                            barretCubit.setIoSetting(
                                io: AppConstant
                                    .ioSettingOptions[ioSettingIndex]);
                          }

                          if (showAntennaType) {
                            antennaTypeIndex += 1;
                            if (antennaTypeIndex >=
                                AppConstant.antennaType.length) {
                              setState(() {
                                antennaTypeIndex = 0;
                              });
                            }
                            barretCubit.setAntennaType(
                                antenna:
                                    AppConstant.antennaType[antennaTypeIndex]);
                          }

                          if (showGeneralOption) {
                            generalOptionIndex += 1;
                            if (generalOptionIndex >=
                                AppConstant.generalOption.length) {
                              setState(() {
                                generalOptionIndex = 0;
                              });
                            }
                            barretCubit.setGeneralOption(
                                general: AppConstant
                                    .generalOption[generalOptionIndex]);
                          }

                          if (showCall) {
                            callOptionIndex += 1;
                            if (callOptionIndex >=
                                AppConstant.callOptions.length) {
                              setState(() {
                                callOptionIndex = 0;
                              });
                            }
                            barretCubit.setCallOption(
                                call: AppConstant.callOptions[callOptionIndex]);
                          }
                        },

                        ///enter button
                        onTapSecondButton: () {
                          setState(() {
                            selectAntenna = false;
                          });
                          if (isSettingIo) {
                            setState(() {
                              showIoSetting = true;
                              showSecondMenu = false;
                              showGeneralOption = false;
                              showIdentification = false;
                            });
                          }
                          if (showAntennaType) {
                            setState(() {
                              selectAntenna = true;
                            });
                          }
                          if (isAntennaType) {
                            setState(() {
                              showIoSetting = false;
                              showAntennaType = true;
                              showGeneralOption = false;
                              showIdentification = false;
                            });
                          }

                          if (isGeneralOption) {
                            setState(() {
                              showGeneralOption = true;
                              showSecondMenu = false;
                              showIoSetting = false;
                              showIdentification = false;
                            });
                          }
                          if (showCall) {
                            setState(() {
                              showCall = false;
                              showCallingNumberTaker = true;
                            });
                          }
                          if (isIdentification) {
                            setState(() {
                              showIdentification = true;
                              showFirstMenu = false;
                            });
                          }
                          print("press enter");
                        },
                        onTapThirdButton: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
