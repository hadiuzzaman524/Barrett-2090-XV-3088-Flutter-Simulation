import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_set/presentation/cubits/xv_setup/cubit.dart';
import 'package:radio_set/presentation/feature/xv_setup/left_button.dart';
import 'package:radio_set/presentation/feature/xv_setup/right_button.dart';
import 'package:radio_set/presentation/feature/xv_setup/xv_device_screen.dart';

import '../../cubits/xv_setup/state.dart';
import '../../widgets/xv_button_row.dart';

class XvSetupScreen extends StatefulWidget {
  const XvSetupScreen({Key? key}) : super(key: key);

  @override
  State<XvSetupScreen> createState() => _XvSetupScreenState();
}

class _XvSetupScreenState extends State<XvSetupScreen> {
  // Step 2
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  bool setChannel = false;
  String channelText = "";
  int pressProg = 1;
  bool setFreq = false;
  bool setSdx = false;
  bool setSec = false;
  bool setSel = false;
  bool setSQ = false;

  bool setHighPower = false;
  bool setLowPower = false;

  @override
  Widget build(BuildContext context) {
    debugPrint("Press PROG: $pressProg");

    final xvCubit = context.read<XvSetupCubit>();
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const LeftButton(),
            Expanded(
              child: Container(
                color: const Color(0xff717868),
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    // const XvDeviceScreen(),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff849E93),
                          border: Border.all(
                              color: const Color(0xff9EA79E), width: 4)),
                      height: 120,
                      child: Row(
                        children: [
                          BlocBuilder<XvSetupCubit, XvSetupState>(
                            builder: (context, state) {
                              return Column(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 280,
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const Spacer(),
                                          setSec
                                              ? const BlinkText("SEC")
                                              : state.sec
                                                  ? const Text("SEC")
                                                  : const Text(""),
                                          const SizedBox(width: 12),
                                          setSel
                                              ? const BlinkText("SEL")
                                              : state.sel
                                                  ? const Text("SEL")
                                                  : const Text(""),
                                          const SizedBox(width: 12),
                                          setSQ
                                              ? const BlinkText("SQ 150")
                                              : state.sq
                                                  ? const Text("SQ 150")
                                                  : const Text(""),
                                          const SizedBox(width: 48),
                                          !setLowPower
                                              ? const BlinkText("HI")
                                              : state.powHigh
                                                  ? const Text("HI")
                                                  : const Text(""),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Row(
                                        children: [
                                          setChannel
                                              ? const BlinkText(
                                                  "CH",
                                                )
                                              : const Text("CH"),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            state.channelName.isEmpty
                                                ? "0"
                                                : state.channelName,
                                            style: const TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          setFreq
                                              ? const BlinkText("F")
                                              : const Text("F"),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            state.frequency.isEmpty
                                                ? "00.000"
                                                : state.frequency,
                                            style: const TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          const Text("MHZ")
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 280,
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const Spacer(),
                                          setSdx
                                              ? const BlinkText("SDX")
                                              : state.sdx
                                                  ? const Text("SDX")
                                                  : const Text(""),
                                          // nested condition
                                          const SizedBox(width: 48),
                                          setLowPower
                                              ? const BlinkText("LOW")
                                              : state.powLow
                                                  ? const Text("LOW")
                                                  : const Text(""),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        XvButtonRow(
                          ///five
                          fifthButton: () {
                            if (setChannel) {
                              xvCubit.setChannelNumber(number: "5");
                            } else if (setFreq) {
                              xvCubit.setFrequency(number: "5");
                            }
                          },

                          ///one
                          firstButton: () {
                            if (setChannel) {
                              xvCubit.setChannelNumber(number: "1");
                            } else if (setFreq) {
                              xvCubit.setFrequency(number: "1");
                            }
                          },

                          ///four
                          fourthButton: () {
                            if (setChannel) {
                              xvCubit.setChannelNumber(number: "4");
                            } else if (setFreq) {
                              xvCubit.setFrequency(number: "4");
                            }
                          },

                          ///two
                          secondButton: () {
                            if (setChannel) {
                              xvCubit.setChannelNumber(number: "2");
                            } else if (setFreq) {
                              xvCubit.setFrequency(number: "2");
                            }
                          },

                          ///three
                          thirdButton: () {
                            if (setChannel) {
                              xvCubit.setChannelNumber(number: "3");
                            } else if (setFreq) {
                              xvCubit.setFrequency(number: "3");
                            }
                          },
                          title1: '1',
                          title2: '2',
                          title3: '3',
                          title4: '4',
                          title5: '5',
                        ),
                        XvButtonRow(
                          ///O
                          fifthButton: () {
                            if (setChannel) {
                              xvCubit.setChannelNumber(number: "0");
                            } else if (setFreq) {
                              xvCubit.setFrequency(number: "0");
                            }
                          },

                          ///six
                          firstButton: () {
                            if (setChannel) {
                              xvCubit.setChannelNumber(number: "6");
                            } else if (setFreq) {
                              xvCubit.setFrequency(number: "6");
                            }
                          },

                          ///nine
                          fourthButton: () {
                            if (setChannel) {
                              xvCubit.setChannelNumber(number: "9");
                            } else if (setFreq) {
                              xvCubit.setFrequency(number: "9");
                            }
                          },

                          ///seven
                          secondButton: () {
                            if (setChannel) {
                              xvCubit.setChannelNumber(number: "7");
                            } else if (setFreq) {
                              xvCubit.setFrequency(number: "7");
                            }
                          },

                          ///eight
                          thirdButton: () {
                            if (setChannel) {
                              xvCubit.setChannelNumber(number: "8");
                            } else if (setFreq) {
                              xvCubit.setFrequency(number: "8");
                            }
                          },
                          title1: '6',
                          title2: '7',
                          title3: '8',
                          title4: '9',
                          title5: '0 SCAN',
                        ),
                        XvButtonRow(
                          ///YES
                          fifthButton: () {
                            if (setChannel) {
                              setState(() {
                                setChannel = false;
                                setFreq = true;
                              });

                              // success set channel
                            } else if (!setChannel && setFreq) {
                              setState(() {
                                setFreq = false;
                                setSdx = true;
                              });
                              //success set freq
                            } else if (!setChannel && !setFreq && setSdx) {
                              setState(() {
                                setSdx = false;
                                setSec = true;
                                xvCubit.setSDX(true);
                              });
                            } else if (!setChannel &&
                                !setFreq &&
                                !setSdx &&
                                setSec) {
                              setState(() {
                                setSec = false;
                                setSel = true;
                                xvCubit.setSEC(true);
                              });
                            } else if (!setChannel &&
                                !setFreq &&
                                !setSdx &&
                                !setSec &&
                                setSel) {
                              setState(() {
                                setSel = false;
                                setSQ = true;
                                xvCubit.setSEL(true);
                              });
                            } else if (!setChannel &&
                                !setFreq &&
                                !setSdx &&
                                !setSec &&
                                !setSel &&
                                setSQ) {
                              setState(() {
                                setSQ = false;
                                xvCubit.setSQ(true);
                              });
                            }
                          },

                          ///NO
                          firstButton: () {
                            if (setChannel) {
                              xvCubit.setChannelNumber(number: "0");
                              pressProg = 1;
                            } else if (setChannel == false && setFreq) {
                              xvCubit.clearFrequency();
                            } else if (setSdx) {
                              setState(() {
                                setSdx = false;
                                setSec = true;
                                xvCubit.setSDX(false);
                              });
                            } else if (setSec) {
                              setState(() {
                                setSec = false;
                                setSel = true;
                                xvCubit.setSEC(false);
                              });
                            } else if (setSel) {
                              setState(() {
                                setSel = false;
                                setSQ = true;
                                xvCubit.setSEL(false);
                              });
                            } else if (setSQ) {
                              setState(() {
                                setSQ = false;
                                xvCubit.setSQ(false);
                              });
                            }
                          },

                          ///PWR
                          fourthButton: () {
                            setState(() {
                              setLowPower = !setLowPower;
                            });
                          },

                          ///CALL
                          secondButton: () {},

                          ///PROG
                          thirdButton: () {
                            if (pressProg == 1) {
                              setState(() {
                                setChannel = true;
                                pressProg += 1;
                              });
                            } else {
                              setState(() {
                                xvCubit.setInitialState();
                                setChannel = true;
                                channelText = "";
                                pressProg = 1;
                                setFreq = false;
                                setSdx = false;
                                setSec = false;
                                setSel = false;
                                setSQ = false;
                              });
                            }
                          },
                          title1: 'NO',
                          title2: 'CALL',
                          title3: 'PROG',
                          title4: 'PWR',
                          title5: 'YES',
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
            const RightButton(),
          ],
        ),
      ),
    );
  }
}
