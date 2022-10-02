import 'package:flutter/material.dart';
import 'package:radio_set/configuration/colors.dart';

import '../../configuration/text_style.dart';

class DeviceButton extends StatefulWidget {
  final String imageUrl;
  final VoidCallback onTap;
  final Function(bool isDelete) onLogPress;

  const DeviceButton(
      {Key? key,
      required this.onLogPress,
      required this.imageUrl,
      required this.onTap})
      : super(key: key);

  @override
  State<DeviceButton> createState() => _DeviceButtonState();
}

class _DeviceButtonState extends State<DeviceButton> {
  bool isLongPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onLongPress: () {
        print("Long Pressed");
        isLongPressed = !isLongPressed;
        setState(() {
          widget.onLogPress(isLongPressed);
        });
        print("Long Pressed end");
      },
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          border: Border.all(
              width: 2,
              color: isLongPressed ? Colors.red : AppColors.primaryColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.imageUrl,
                height: 90,
                width: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
