import 'package:flutter/material.dart';

class AppBottomSheet extends StatefulWidget {
  const AppBottomSheet({Key? key}) : super(key: key);

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
                      itemCount: 3,
                      separatorBuilder: (context, val) {
                        return const Divider();
                      },
                      itemBuilder: (context, index) {
                        return const InkWell(
                          child: Text("hello"),
                        );
                      }),
                ),
              )
            ]);
          });
    });
  }
}
