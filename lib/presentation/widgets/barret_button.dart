import 'package:flutter/material.dart';

class BarretButton extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;
  final VoidCallback? onLongTap;

  const BarretButton({Key? key, this.onLongTap, required this.imageUrl, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongTap,
        child: Container(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset(imageUrl),
        ),
      ),
    );
  }
}
