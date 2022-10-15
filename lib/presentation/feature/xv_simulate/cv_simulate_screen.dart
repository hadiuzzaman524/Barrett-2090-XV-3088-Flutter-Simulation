import 'package:flutter/material.dart';
import 'package:radio_set/configuration/constants.dart';
import 'package:radio_set/presentation/feature/xv_setup/xv_setup_device_two.dart';
import 'package:radio_set/presentation/feature/xv_setup/xv_setup_screen.dart';
import 'package:radio_set/presentation/widgets/device_button.dart';
import 'package:radio_set/presentation/widgets/icon_button.dart';

import '../../widgets/transmission_success.dart';

class XvSimulateScreen extends StatefulWidget {
  const XvSimulateScreen({Key? key}) : super(key: key);

  @override
  State<XvSimulateScreen> createState() => _XvSimulateScreenState();
}

class _XvSimulateScreenState extends State<XvSimulateScreen> {
  bool deleteItem = false;
  int deleteIndex = 0;
  bool startTransmit = false;
  bool isConfiguredFirstDevice = false;
  bool isConfiguredSecondDevice = false;

  @override
  Widget build(BuildContext context) {
    debugPrint(AppConstant.xvSetupList[0].toString());
    debugPrint(AppConstant.xvSetupList[1].toString());
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
                      imageUrl: "images/xv30.jpeg"),
                  if (AppConstant.xvList.isNotEmpty)
                    AppIconButton(
                        title: "Delete",
                        onTap: () {
                          if (deleteItem) {
                            AppConstant.deleteXvDevice(index: deleteIndex);
                            setState(() {
                              deleteItem = false;
                              startTransmit = false;
                              isConfiguredSecondDevice = false;
                              isConfiguredFirstDevice = false;
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
                            if (!isConfiguredFirstDevice ||
                                !isConfiguredSecondDevice) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "Please Configure those device first")));
                            }
                            if (startTransmit &&
                                AppConstant.xvList.length > 1 &&
                                isConfiguredFirstDevice &&
                                isConfiguredSecondDevice &&
                                (AppConstant.xvSetupList[0] !=
                                    AppConstant.xvSetupList[1])) {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (ctx) =>
                                      const TransmissionSuccessDialog(
                                          success: false));
                            } else if (startTransmit &&
                                AppConstant.xvList.length > 1 &&
                                isConfiguredFirstDevice &&
                                isConfiguredSecondDevice &&
                                (AppConstant.xvSetupList[0] ==
                                    AppConstant.xvSetupList[1])) {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (ctx) =>
                                      const TransmissionSuccessDialog(
                                          success: true));
                            }
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
                          borderColor: startTransmit &&
                                  AppConstant.xvList.length > 1 &&
                                  isConfiguredFirstDevice &&
                                  isConfiguredSecondDevice &&
                                  (AppConstant.xvSetupList[0] !=
                                      AppConstant.xvSetupList[1])
                              ? Colors.red
                              : Colors.blue,
                          key: Key(DateTime.now().toString()),
                          imageUrl: "images/xv30.jpeg",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => XvSetupScreen(
                                          isConfigured: () {
                                            setState(() {
                                              isConfiguredFirstDevice = true;
                                              startTransmit = false;
                                            });
                                          },
                                          configured: isConfiguredFirstDevice,
                                        )));
                          },
                          onLogPress: (bool value) {
                            if (value) {
                              deleteItem = value;
                              deleteIndex = 0;
                              debugPrint("value: $value");
                              debugPrint("Delete item: $deleteItem");
                            }
                          },
                          deviceNumber: '1',
                        )
                    ],
                  ),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 60, right: 15),
                    decoration: BoxDecoration(
                      border: startTransmit &&
                              AppConstant.xvList.length > 1 &&
                              isConfiguredFirstDevice &&
                              isConfiguredSecondDevice
                          ? Border(
                              left: BorderSide(
                                  width: 2.0,
                                  color: (AppConstant.xvSetupList[0] ==
                                          AppConstant.xvSetupList[1])
                                      ? Colors.lightBlue
                                      : Colors.red),
                              bottom: BorderSide(
                                  width: 2.0,
                                  color: (AppConstant.xvSetupList[0] ==
                                          AppConstant.xvSetupList[1])
                                      ? Colors.lightBlue
                                      : Colors.red),
                            )
                          : null,
                    ),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (AppConstant.xvList.length > 1)
                        DeviceButton(
                          borderColor: startTransmit &&
                                  AppConstant.xvList.length > 1 &&
                                  isConfiguredFirstDevice &&
                                  isConfiguredSecondDevice &&
                                  (AppConstant.xvSetupList[0] !=
                                      AppConstant.xvSetupList[1])
                              ? Colors.red
                              : Colors.blue,
                          key: Key(DateTime.now().toString()),
                          imageUrl: "images/xv30.jpeg",
                          deviceNumber: "2",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => XvSetupDeviceTwoScreen(
                                          isConfigured: () {
                                            setState(() {
                                              startTransmit = false;
                                              isConfiguredSecondDevice = true;
                                            });
                                          },
                                          configured: isConfiguredSecondDevice,
                                        )));
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
