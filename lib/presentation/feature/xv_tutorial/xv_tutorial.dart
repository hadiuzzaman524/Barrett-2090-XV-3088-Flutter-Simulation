import 'package:flutter/material.dart';

import '../../widgets/common_button.dart';

class XvTutorialScreen extends StatelessWidget {
  const XvTutorialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                const SizedBox(height: 12),
                const Text("Tutorial"),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                CommonButton(onTap: () {}, title: "Frequency Setting"),
                const SizedBox(height: 12),
                CommonButton(onTap: () {}, title: "SEL Call"),
                const SizedBox(height: 12),
                CommonButton(onTap: () {}, title: "Power Setup"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
