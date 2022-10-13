import 'package:flutter/material.dart';

class RightButton extends StatelessWidget {
  const RightButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff53594D),
      width: 120,
      height: MediaQuery.of(context).size.width,
      child: Image.asset("images/left.jpeg",
        fit: BoxFit.cover,),
    );
  }
}
