import 'package:flutter/material.dart';

class BarretButton extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;

  const BarretButton({Key? key, required this.imageUrl, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset(imageUrl),
        ),
      ),
    );
  }
}
