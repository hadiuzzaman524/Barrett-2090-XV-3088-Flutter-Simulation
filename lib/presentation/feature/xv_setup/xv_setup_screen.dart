import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(
              color: const Color(0xff53594D),
              width: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CircleAvatar(
                    radius: 60,
                  ),
                  CircleAvatar(
                    radius: 60,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              color: const Color(0xff717868),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff849E93),
                        border: Border.all(
                            color: const Color(0xff9EA79E), width: 4)),
                    height: 120,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      XvButtonRow(
                        ///one
                        fifthButton: () {},

                        ///two
                        firstButton: () {},

                        ///three
                        fourthButton: () {},

                        ///four
                        secondButton: () {},

                        ///five
                        thirdButton: () {},
                        title1: '1',
                        title2: '2',
                        title3: '3',
                        title4: '4',
                        title5: '5',
                      ),
                      XvButtonRow(
                        ///six
                        fifthButton: () {},

                        ///seven
                        firstButton: () {},

                        ///eight
                        fourthButton: () {},

                        ///nine
                        secondButton: () {},

                        ///0 SCAN
                        thirdButton: () {},
                        title1: '6',
                        title2: '7',
                        title3: '8',
                        title4: '9',
                        title5: '0 SCAN',
                      ),
                      XvButtonRow(
                        ///NO
                        fifthButton: () {},

                        ///CALL
                        firstButton: () {},

                        ///PROG
                        fourthButton: () {},

                        ///PWR
                        secondButton: () {},

                        ///YES
                        thirdButton: () {},
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
            )),
            Container(
              color: const Color(0xff53594D),
              width: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CircleAvatar(
                    radius: 60,
                  ),
                  CircleAvatar(
                    radius: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
