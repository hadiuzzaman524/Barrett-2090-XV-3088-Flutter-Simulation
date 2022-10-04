import 'package:flutter/material.dart';
import 'package:radio_set/presentation/widgets/xv_button.dart';

class XvButtonRow extends StatelessWidget {
  final VoidCallback firstButton;
  final VoidCallback secondButton;
  final VoidCallback thirdButton;
  final VoidCallback fourthButton;
  final VoidCallback fifthButton;

  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;

  const XvButtonRow(
      {Key? key,
      required this.fifthButton,
      required this.firstButton,
      required this.fourthButton,
      required this.secondButton,
      required this.thirdButton,
      required this.title1,
      required this.title2,
      required this.title3,
      required this.title4,
      required this.title5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          XvButton(
            onTap: firstButton,
            title: title1,
          ),
          XvButton(
            onTap: secondButton,
            title: title2,
          ),
          XvButton(
            onTap: thirdButton,
            title: title3,
          ),
          XvButton(
            onTap: fourthButton,
            title: title4,
          ),
          XvButton(
            onTap: fifthButton,
            title: title5,
          ),
        ],
      ),
    );
  }
}
