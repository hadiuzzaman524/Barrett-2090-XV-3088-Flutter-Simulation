
import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final String title;

  const TextContainer({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String newName= "";
    for(int i=0; i<3; i++){
      newName+=title[i];
    }
    return Container(
      padding: const EdgeInsets.all(4),
      color: Colors.black54,
      child: Text(
        newName.toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
