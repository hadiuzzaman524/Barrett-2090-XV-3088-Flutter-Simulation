import 'package:flutter/material.dart';

class LeftButton extends StatelessWidget {
  const LeftButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff53594D),
      width: 120,
      height: MediaQuery.of(context).size.width,
      child: Image.asset("images/right.jpeg",
      fit: BoxFit.fill,),
    );
  }
}
