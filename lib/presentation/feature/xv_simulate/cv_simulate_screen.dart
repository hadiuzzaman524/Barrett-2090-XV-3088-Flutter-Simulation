import 'package:flutter/material.dart';
import 'package:radio_set/configuration/constants.dart';
import 'package:radio_set/presentation/widgets/card_button.dart';
import 'package:radio_set/presentation/widgets/device_button.dart';
import 'package:radio_set/presentation/widgets/icon_button.dart';

class XvSimulateScreen extends StatefulWidget {
  const XvSimulateScreen({Key? key}) : super(key: key);

  @override
  State<XvSimulateScreen> createState() => _XvSimulateScreenState();
}

class _XvSimulateScreenState extends State<XvSimulateScreen> {
  bool deleteItem = false;
  int deleteIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simulate"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppIconButton(
                      title: "Add",
                      onTap: () {
                        final String result =
                            AppConstant.addXvDevice(title: "hello");
                        debugPrint(result);
                        setState(() {});
                      },
                      imageUrl: "images/comment.png"),
                  AppIconButton(
                      title: "Delete",
                      onTap: () {
                        if (deleteItem) {
                          AppConstant.deleteXvDevice(index: deleteIndex);
                          setState(() {
                            deleteItem = false;
                          });
                        }
                      },
                      imageUrl: "images/delete.png"),
                  AppIconButton(
                      title: "Transmit",
                      onTap: () {},
                      imageUrl: "images/email.png"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < AppConstant.xvList.length; i++)
                    DeviceButton(
                      key: Key(DateTime.now().toString()),
                      imageUrl: "images/delete.png",
                      onTap: () {},
                      onLogPress: (bool value) {
                        if (!value) {
                          setState(() {
                            deleteItem = true;
                            deleteIndex = i;
                          });
                        }
                      },
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
