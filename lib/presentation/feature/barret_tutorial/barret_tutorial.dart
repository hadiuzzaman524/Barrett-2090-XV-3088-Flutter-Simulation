import 'package:flutter/material.dart';
import 'package:radio_set/configuration/constants.dart';

import '../../widgets/card_button.dart';
import '../../widgets/common_button.dart';
import '../../widgets/drugable_bottomsheet.dart';
import '../../widgets/image_stack.dart';

class BarretTutorialScreen extends StatelessWidget {
  const BarretTutorialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Barret 2090 Tutorial"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ImageStack(
              title: "Barret 2090 Tutorial", imageUrl: "images/barret.jpg"),
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
                      title: "Frequency Setting",
                      imageUrl: "images/tower.png",
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16)),
                            ),
                            context: context,
                            builder: (context) {
                              return AppBottomSheet(
                                tutorialList: AppConstant.barretFrequency,
                              );
                            });
                      }),
                  CardButton(
                      title: "SEL Call",
                      imageUrl: "images/sell.png",
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16)),
                            ),
                            context: context,
                            builder: (context) {
                              return AppBottomSheet(
                                tutorialList: AppConstant.barretSellCall,
                              );
                            });
                      }),
                  CardButton(
                      title: "Power Setup",
                      imageUrl: "images/settings.png",
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16)),
                            ),
                            context: context,
                            builder: (context) {
                              return AppBottomSheet(
                                tutorialList: AppConstant.barretPowerSetup,
                              );
                            });
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
