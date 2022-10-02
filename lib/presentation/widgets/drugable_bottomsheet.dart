import 'package:flutter/material.dart';
import 'package:radio_set/presentation/widgets/tutorial_guide.dart';

import '../../services/model/tutorial_model.dart';

class AppBottomSheet extends StatefulWidget {
  final List<TutorialModel> tutorialList;

  const AppBottomSheet({Key? key, required this.tutorialList})
      : super(key: key);

  @override
  State<AppBottomSheet> createState() => _AppBottomSheetState();
}

class _AppBottomSheetState extends State<AppBottomSheet> {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return DraggableScrollableSheet(
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return Column(children: [
              const SizedBox(height: 16),
              Container(
                width: 40,
                height: 5,
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                      controller: scrollController,
                      itemCount: widget.tutorialList.length,
                      separatorBuilder: (context, val) {
                        return const Divider();
                      },
                      itemBuilder: (context, index) {
                        return TutorialGuide(
                          title: widget.tutorialList[index].title,
                          details: widget.tutorialList[index].details,
                        );
                      }),
                ),
              )
            ]);
          });
    });
  }
}
