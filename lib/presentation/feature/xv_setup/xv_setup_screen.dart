import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_set/presentation/cubits/xv_setup/cubit.dart';
import 'package:radio_set/presentation/feature/xv_setup/left_button.dart';
import 'package:radio_set/presentation/feature/xv_setup/right_button.dart';
import 'package:radio_set/presentation/feature/xv_setup/xv_device_screen.dart';

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
                    const XvDeviceScreen(),
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
                              setChannel = false;
                              setFreq = true;
                            }
                          },

                          ///NO
                          firstButton: () {
                            if (setChannel) {
                              xvCubit.setChannelNumber(number: "0");
                              pressProg = 1;
                            }
                            if (setChannel == false && setFreq) {
                              xvCubit.clearFrequency();
                            }
                          },

                          ///PWR
                          fourthButton: () {},

                          ///CALL
                          secondButton: () {},

                          ///PROG
                          thirdButton: () {
                            if (pressProg == 1) {
                              setChannel = true;
                              pressProg += 1;
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
