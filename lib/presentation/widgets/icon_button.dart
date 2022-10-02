import 'package:flutter/material.dart';
import 'package:radio_set/configuration/colors.dart';
import 'package:radio_set/configuration/text_style.dart';

class AppIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String imageUrl;

  const AppIconButton(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.imageUrl,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 100,
        width: 100,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  border: Border.all(color: AppColors.primaryColor, width: 2),
                ),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(title, style: AppTextStyle.titleTextStyle,),
          ],
        ),
      ),
    );
  }
}
