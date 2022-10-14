import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_set/configuration/constants.dart';
import 'package:radio_set/presentation/cubits/xv_setup/cubit.dart';
import 'package:radio_set/presentation/cubits/xv_setup_device_two/cubit.dart';
import 'package:radio_set/presentation/cubits/xv_setup_device_two/state.dart';
import 'package:radio_set/presentation/feature/xv_setup/left_button.dart';
import 'package:radio_set/presentation/feature/xv_setup/right_button.dart';
import 'package:radio_set/presentation/feature/xv_setup/xv_device_screen.dart';
import 'package:radio_set/presentation/feature/xv_setup/xv_light.dart';
import 'package:radio_set/services/model/xv_setup.dart';

import '../../cubits/xv_setup/state.dart';
import '../../widgets/xv_button_row.dart';

class XvSetupDeviceTwoScreen extends StatefulWidget {
  final VoidCallback isConfigured;

  const XvSetupDeviceTwoScreen({Key? key, required this.isConfigured})
      : super(key: key);

  @override
  State<XvSetupDeviceTwoScreen> createState() => _XvSetupDeviceTwoScreenState();
}

class _XvSetupDeviceTwoScreenState extends State<XvSetupDeviceTwoScreen> {
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
  bool setPower = false;
  bool initialPower = true;

  bool pressPowerButton = false;
  bool blinkProg = false;
  bool setProg = false;

  bool pressCallButton = false;
  bool deviceOn = false;

  @override
  Widget build(BuildContext context) {
    debugPrint("Press PROG: $pressProg");

    final xvCubit = context.read<XvSetupDeviceTwoCubit>();
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            LeftButton(
              onTap: () {
                setState(() {
                  deviceOn = !deviceOn;
                });
              },
            ),
            XVLight(deviceOn: deviceOn),
            Expanded(
              child: Container(
                color: const Color(0xff717868),
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    // const XvDeviceScreen(),
                    deviceOn
                        ? Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff849E93),
                                border: Border.all(
                                    color: const Color(0xff9EA79E), width: 4)),
                            height: 120,
                            child: Row(
                              children: [
                                BlocBuilder<XvSetupDeviceTwoCubit,
                                    XvSetupDeviceTwoState>(
                                  builder: (context, state) {
                                    return Column(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              280,
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                const Spacer(),
                                                blinkProg
                                                    ? const BlinkText("PROG")
                                                    : setProg
                                                        ? Text("")
                                                        : const Text("PROG"),
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
                                                setHighPower
                                                    ? const BlinkText("HI")
                                                    : state.powHigh
                                                        ? const Text("HI")
                                                        : const Text(""),
                                              ],
                                            ),
                                          ),
                                        ),
                                        pressCallButton
                                            ? Expanded(
                                                child: Row(
                                                  children: [
                                                    const Text("CH"),
                                                    const SizedBox(
                                                      width: 18,
                                                    ),
                                                    Text(
                                                      state.channelName.isEmpty
                                                          ? "0"
                                                          : state.channelName,
                                                      style: const TextStyle(
                                                        fontSize: 35,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 16,
                                                    ),
                                                    const Text(
                                                      "72.377",
                                                      style: TextStyle(
                                                        fontSize: 35,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            : Expanded(
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
                                                        state.channelName
                                                                .isEmpty
                                                            ? "0"
                                                            : state.channelName,
                                                        style: const TextStyle(
                                                          fontSize: 35,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              280,
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                const Spacer(),
                                                const Spacer(),
                                                if (pressCallButton)
                                                  const BlinkText("ADDR CODE"),
                                                const Spacer(),
                                                setSdx
                                                    ? const BlinkText("SDX")
                                                    : state.sdx
                                                        ? const Text("SDX")
                                                        : const Text(""),
                                                // nested condition
                                                const SizedBox(width: 48),
                                                // if (initialPower) const Text("LOW"),
                                                setLowPower
                                                    ? const BlinkText("LOW")
                                                    : state.powLow &&
                                                            !setHighPower
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
                          )
                        : Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff849E93),
                                border: Border.all(
                                    color: const Color(0xff9EA79E), width: 4)),
                            height: 120,
                            child: Container(),
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
                              final state =
                                  context.read<XvSetupDeviceTwoCubit>().state;
                              final String r =
                                  xvCubit.frequencyConversion(state.frequency);
                              xvCubit.setConvertedFrequency(freq: r);
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
                                blinkProg = true;
                                xvCubit.setSQ(true);
                              });
                            } else if (!setChannel &&
                                !setFreq &&
                                !setSdx &&
                                !setSec &&
                                !setSel &&
                                !setSQ &&
                                blinkProg) {
                              setState(() {
                                blinkProg = false;
                                setProg = true;
                              });
                              final state =
                                  context.read<XvSetupDeviceTwoCubit>().state;

                              AppConstant.addXvSecondDeviceSetup(
                                  setupModel: XvSetupModel(
                                      sec: state.sec,
                                      sel: state.sel,
                                      sq: state.sq,
                                      sdx: state.sdx,
                                      powLow: state.powLow,
                                      powHigh: state.powHigh,
                                      channelName: "",
                                      frequency: state.frequency));
                              widget.isConfigured();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Information Saved!")));
                            }

                            if (pressPowerButton) {
                              if (setHighPower) {
                                xvCubit.setHighPower(true);
                                xvCubit.setLowPower(false);
                                setState(() {
                                  setHighPower = false;
                                });

                                print("Set High Power");
                              }
                              if (setLowPower) {
                                xvCubit.setLowPower(true);
                                xvCubit.setHighPower(false);
                                setState(() {
                                  setLowPower = false;
                                });
                                print("Set Low Power ");
                              }
                              final state =
                                  context.read<XvSetupDeviceTwoCubit>().state;

                              AppConstant.addXvSecondDeviceSetup(
                                  setupModel: XvSetupModel(
                                      sec: state.sec,
                                      sel: state.sel,
                                      sq: state.sq,
                                      sdx: state.sdx,
                                      powLow: state.powLow,
                                      powHigh: state.powHigh,
                                      channelName: "",
                                      frequency: state.frequency));
                              widget.isConfigured();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Information Saved!")));
                            }
                            if (pressCallButton) {
                              setState(() {
                                pressCallButton = false;
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
                                blinkProg = true;
                                xvCubit.setSQ(false);
                              });
                            } else if (!setChannel &&
                                !setFreq &&
                                !setSdx &&
                                !setSec &&
                                !setSel &&
                                !setSQ &&
                                blinkProg) {
                              setState(() {
                                blinkProg = false;
                                xvCubit.setInitialState();
                                setChannel = true;
                                channelText = "";
                                pressProg = 1;
                                setFreq = false;
                                setSdx = false;
                                setSec = false;
                                setSel = false;
                                setSQ = false;
                                setProg = false;
                              });
                            }

                            if (pressPowerButton) {
                              if (setHighPower) {
                                xvCubit.setHighPower(false);
                                xvCubit.setLowPower(true);
                                setState(() {
                                  setHighPower = false;
                                });
                                print("Set High Power");
                              }
                              if (setLowPower) {
                                xvCubit.setLowPower(false);
                                xvCubit.setHighPower(true);
                                setState(() {
                                  setLowPower = false;
                                });
                                print("Set Low Power ");
                              }
                            }

                            if (pressCallButton) {
                              setState(() {
                                pressCallButton = false;
                              });
                            }
                          },

                          ///PWR
                          fourthButton: () {
                            setState(() {
                              pressPowerButton = true;
                              setLowPower = !setLowPower;
                              setHighPower = !setLowPower;
                            });
                          },

                          ///CALL
                          secondButton: () {
                            setState(() {
                              pressCallButton = true;
                            });
                          },

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
                                setProg = false;
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
