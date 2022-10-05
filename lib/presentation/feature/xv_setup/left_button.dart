import 'package:flutter/material.dart';

class LeftButton extends StatelessWidget {
  const LeftButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff53594D),
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CircleAvatar(
            radius: 60,
          ),
          CircleAvatar(
            radius: 60,
          ),
        ],
      ),
    );
  }
}
