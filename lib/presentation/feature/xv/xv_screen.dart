import 'package:flutter/material.dart';

import '../../widgets/card_button.dart';
import '../../widgets/image_stack.dart';

class XvScreen extends StatelessWidget {
  const XvScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ImageStack(title: "XV 2028", imageUrl: "images/flutter.png"),
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
                      imageUrl: "images/flutter.png",
                      onTap: () {}),
                  CardButton(
                      title: "Simulate",
                      imageUrl: "images/flutter.png",
                      onTap: () {}),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
