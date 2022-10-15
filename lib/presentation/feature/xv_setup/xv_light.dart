import 'package:flutter/material.dart';

class XVLight extends StatelessWidget {
  final bool deviceOn;
  final bool antennaOn;

  const XVLight({Key? key, required this.deviceOn, required this.antennaOn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff717868),
      width: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 9,
            backgroundColor: antennaOn ? Colors.green : Colors.redAccent,
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
