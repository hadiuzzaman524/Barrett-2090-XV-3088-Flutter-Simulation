import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String imageUrl;

  const AppIconButton(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 100,
      child: Column(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Container()),
          ),
          Text(title),
        ],
      ),
    );
  }
}
