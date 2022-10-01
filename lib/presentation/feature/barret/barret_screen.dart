import 'package:flutter/material.dart';
import 'package:radio_set/presentation/feature/barret_simulate/barret_simulate_screen.dart';
import 'package:radio_set/presentation/feature/barret_tutorial/barret_tutorial.dart';
import 'package:radio_set/presentation/widgets/common_button.dart';

class BarretScreen extends StatelessWidget {
  const BarretScreen({Key? key}) : super(key: key);

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
                              builder: (ctx) => const BarretTutorialScreen()));
                    },
                    title: "Tutorial"),
                const SizedBox(height: 12),
                CommonButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const BarretSimulateScreen()));
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
