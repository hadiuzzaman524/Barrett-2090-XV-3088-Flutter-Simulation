import 'package:flutter/material.dart';

import '../../configuration/text_style.dart';

class ImageStack extends StatelessWidget {
  final String title;
  final String imageUrl;

  const ImageStack({Key? key, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 190,
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: Text(
                  title,
                  style: AppTextStyle.titleTextStyle.copyWith(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
