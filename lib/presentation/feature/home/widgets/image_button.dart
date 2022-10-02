import 'package:flutter/material.dart';
import 'package:radio_set/configuration/text_style.dart';

class ImageButton extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;
  final String title;

  const ImageButton(
      {Key? key,
      required this.imageUrl,
      required this.onTap,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: AppTextStyle.titleTextStyle,
          ),
        ],
      ),
    );
  }
}
