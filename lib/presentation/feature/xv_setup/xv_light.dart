import 'package:flutter/material.dart';

class XVLight extends StatelessWidget {
  final bool deviceOn;

  const XVLight({Key? key, required this.deviceOn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff717868),
      width: 20,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          CircleAvatar(
            radius: 9,
            backgroundColor: deviceOn ? Colors.green : Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
