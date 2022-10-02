import 'package:flutter/material.dart';
import 'package:radio_set/presentation/feature/xv_simulate/cv_simulate_screen.dart';

import '../../widgets/card_button.dart';
import '../../widgets/image_stack.dart';
import '../xv_tutorial/xv_tutorial.dart';

class XvScreen extends StatelessWidget {
  const XvScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ImageStack(title: "XV 3088", imageUrl: "images/flutter.png"),
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
                                builder: (ctx) => const XvTutorialScreen()));
                      }),
                  CardButton(
                      title: "Simulate",
                      imageUrl: "images/simulate.png",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const XvSimulateScreen()));
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
