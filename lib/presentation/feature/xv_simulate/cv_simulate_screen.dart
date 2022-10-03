import 'package:flutter/material.dart';
import 'package:radio_set/configuration/constants.dart';
import 'package:radio_set/presentation/feature/xv_setup/xv_setup_screen.dart';
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
  bool startTransmit = false;

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
                  if (AppConstant.xvList.length < 2) Container(),
                  AppIconButton(
                      title: "Add",
                      onTap: () {
                        final String result =
                            AppConstant.addXvDevice(title: "hello");
                        debugPrint(result);
                        setState(() {});
                      },
                      imageUrl: "images/xv3088.jpg"),
                  if (AppConstant.xvList.isNotEmpty)
                    AppIconButton(
                        title: "Delete",
                        onTap: () {
                          if (deleteItem) {
                            AppConstant.deleteXvDevice(index: deleteIndex);
                            setState(() {
                              deleteItem = false;
                              startTransmit = false;
                            });
                          }
                        },
                        imageUrl: "images/delete.png"),
                  AppConstant.xvList.length < 2
                      ? Container()
                      : AppIconButton(
                          title: "Transmit",
                          onTap: () {
                            setState(() {
                              startTransmit = true;
                            });
                          },
                          imageUrl: "images/email.png"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      if (AppConstant.xvList.isNotEmpty)
                        DeviceButton(
                          key: Key(DateTime.now().toString()),
                          imageUrl: "images/xv3088.jpg",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => const XvSetupScreen()));
                          },
                          onLogPress: (bool value) {
                            if (value) {
                              deleteItem = value;
                              deleteIndex = 0;
                              debugPrint("value: $value");
                              debugPrint("Delete item: $deleteItem");
                            }
                          },
                        )
                    ],
                  ),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 60, right: 15),
                    decoration: BoxDecoration(
                      border: startTransmit && AppConstant.xvList.length > 1
                          ? const Border(
                              left: BorderSide(
                                  width: 2.0, color: Colors.lightBlue),
                              bottom: BorderSide(
                                  width: 2.0, color: Colors.lightBlue),
                            )
                          : null,
                    ),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (AppConstant.xvList.length > 1)
                        DeviceButton(
                          key: Key(DateTime.now().toString()),
                          imageUrl: "images/xv3088.jpg",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => const XvSetupScreen()));
                          },
                          onLogPress: (bool value) {
                            if (value) {
                              deleteItem = value;
                              deleteIndex = 1;
                              debugPrint("value: $value");
                              debugPrint("Delete item: $deleteItem");
                            }
                          },
                        )
                    ],
                  ),
                  const SizedBox(height: 42),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
