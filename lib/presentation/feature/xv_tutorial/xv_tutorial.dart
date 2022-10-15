import 'package:flutter/material.dart';

import '../../../configuration/constants.dart';
import '../../widgets/card_button.dart';
import '../../widgets/drugable_bottomsheet.dart';
import '../../widgets/image_stack.dart';

class XvTutorialScreen extends StatelessWidget {
  const XvTutorialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("XV 3088 Tutorial"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ImageStack(
              title: "XV 3088 Tutorial", imageUrl: "images/xv3088.jpg"),
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
                                tutorialList: AppConstant.xvFrequency,
                              );
                            });
                      }),
                  CardButton(
                      title: "SEL Call",
                      imageUrl: "images/sell.png",
                      onTap: () {
                        /* showModalBottomSheet(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16)),
                            ),
                            context: context,
                            builder: (context) {
                              return AppBottomSheet(
                                tutorialList: AppConstant.xvFrequency,
                              );
                            });*/
                      }),
                  CardButton(
                      title: "Power Setup",
                      imageUrl: "images/settings.png",
                      onTap: () {
                        /*  showModalBottomSheet(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16)),
                            ),
                            context: context,
                            builder: (context) {
                              return AppBottomSheet(
                                tutorialList: AppConstant.xvFrequency,
                              );
                            });*/
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
