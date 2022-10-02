import 'package:flutter/material.dart';

import '../../configuration/text_style.dart';

class CardButton extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onTap;

  const CardButton(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 7,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imageUrl,
                height: 90,
                width: 90,
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: AppTextStyle.titleTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
