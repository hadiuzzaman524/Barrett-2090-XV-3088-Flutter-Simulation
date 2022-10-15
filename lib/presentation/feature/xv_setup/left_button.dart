import 'package:flutter/material.dart';

class LeftButton extends StatelessWidget {
  final VoidCallback onTap;
  final VoidCallback onAntenaTap;

  const LeftButton({Key? key, required this.onTap,
  required this.onAntenaTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff53594D),
      width: 110,
      height: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap:onAntenaTap,
              child: Image.asset(
                "images/antenabutton.jpeg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: onTap,
              child: Image.asset(
                "images/powerbutton.jpeg",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
