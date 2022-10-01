import 'package:flutter/material.dart';
import 'package:radio_set/presentation/feature/xv_simulate/cv_simulate_screen.dart';
import 'package:radio_set/presentation/feature/xv_tutorial/xv_tutorial.dart';

import '../../widgets/common_button.dart';

class XvScreen extends StatelessWidget {
  const XvScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                CommonButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const XvTutorialScreen()));
                    },
                    title: "Tutorial"),
                const SizedBox(height: 12),
                CommonButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const XvSimulateScreen()));
                    },
                    title: "Simulate"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
