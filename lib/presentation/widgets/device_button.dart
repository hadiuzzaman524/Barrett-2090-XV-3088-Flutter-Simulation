import 'package:flutter/material.dart';

class DeviceButton extends StatefulWidget {
  final String imageUrl;
  final VoidCallback onTap;
  final Function(bool isDelete) onLogPress;
  final String deviceNumber;
  final Color borderColor;

  const DeviceButton(
      {Key? key,
      required this.onLogPress,
      required this.imageUrl,
      required this.onTap,
      required this.deviceNumber,
      required this.borderColor})
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
        height: 140,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          border: Border.all(
              width: 2, color: isLongPressed ? Colors.redAccent : widget.borderColor),
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
              const SizedBox(height: 12),
              Text("Device ${widget.deviceNumber}")
            ],
          ),
        ),
      ),
    );
  }
}
