import 'package:flutter/material.dart';
import 'package:radio_set/presentation/widgets/barret_button.dart';

class BarretButtonRow extends StatelessWidget {
  final VoidCallback onTapFirstButton;
  final VoidCallback onTapSecondButton;
  final VoidCallback onTapThirdButton;
  final String firstButtonImageUrl;
  final String secondButtonImageUrl;
  final String thirdButtonImageUrl;

  const BarretButtonRow(
      {Key? key,
      required this.firstButtonImageUrl,
      required this.onTapFirstButton,
      required this.onTapSecondButton,
      required this.onTapThirdButton,
      required this.secondButtonImageUrl,
      required this.thirdButtonImageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BarretButton(
            onTap: onTapFirstButton,
            imageUrl: firstButtonImageUrl,
          ),
          const SizedBox(width: 8),
          BarretButton(
            onTap: onTapSecondButton,
            imageUrl: secondButtonImageUrl,
          ),
          const SizedBox(width: 8),
          BarretButton(
            onTap: onTapThirdButton,
            imageUrl: thirdButtonImageUrl,
          ),
        ],
      ),
    );
  }
}
