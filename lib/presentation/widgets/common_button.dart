import 'package:flutter/material.dart';

import '../../configuration/colors.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const CommonButton({Key? key, required this.onTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: AppColors.buttonTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
