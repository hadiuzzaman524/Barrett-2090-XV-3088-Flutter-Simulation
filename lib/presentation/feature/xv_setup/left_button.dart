import 'package:flutter/material.dart';

class LeftButton extends StatelessWidget {
  final VoidCallback onTap;

  const LeftButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: const Color(0xff53594D),
        width: 110,
        height: MediaQuery.of(context).size.width,
        child: Image.asset(
          "images/right.jpeg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
