import 'package:flutter/material.dart';

class TutorialGuide extends StatefulWidget {
  final String title;
  final String details;

  const TutorialGuide({Key? key, required this.title, required this.details})
      : super(key: key);

  @override
  State<TutorialGuide> createState() => _TutorialGuideState();
}

class _TutorialGuideState extends State<TutorialGuide> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isExpand = !isExpand;
        });
      },
      child: ListTile(
        leading: const Icon(Icons.speaker_notes),
        title: Text(widget.title),
        trailing: isExpand
            ? const Icon(Icons.expand_less)
            : const Icon(Icons.expand_more),
        subtitle: isExpand ? Text(widget.details) : Container(),
      ),
    );
  }
}
