import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radio_set/presentation/widgets/xv_button.dart';

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
              width: 150,
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
                    children: const [
                      XvButtonRow(),
                      XvButtonRow(),
                      XvButtonRow(),
                    ],
                  ))
                ],
              ),
            )),
            Container(
              color: const Color(0xff53594D),
              width: 150,
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
