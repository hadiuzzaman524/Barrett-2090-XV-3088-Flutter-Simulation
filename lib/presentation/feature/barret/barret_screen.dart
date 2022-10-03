import 'package:flutter/material.dart';
import 'package:radio_set/configuration/text_style.dart';
import 'package:radio_set/presentation/feature/barret_simulate/barret_simulate_screen.dart';
import 'package:radio_set/presentation/feature/barret_tutorial/barret_tutorial.dart';
import 'package:radio_set/presentation/feature/xv_simulate/cv_simulate_screen.dart';
import 'package:radio_set/presentation/feature/xv_tutorial/xv_tutorial.dart';
import 'package:radio_set/presentation/widgets/card_button.dart';
import 'package:radio_set/presentation/widgets/common_button.dart';
import 'package:radio_set/presentation/widgets/image_stack.dart';

class BarretScreen extends StatelessWidget {
  const BarretScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Barret 2090"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ImageStack(
              title: "Barret 2090", imageUrl: "images/barret.jpg"),
          const SizedBox(height: 12),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 2 / 2.1,
                children: [
                  CardButton(
                      title: "Tutorial",
                      imageUrl: "images/tutorial.png",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) =>
                                    const BarretTutorialScreen()));
                      }),
                  CardButton(
                      title: "Simulate",
                      imageUrl: "images/simulate.png",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) =>
                                    const BarretSimulateScreen()));
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
