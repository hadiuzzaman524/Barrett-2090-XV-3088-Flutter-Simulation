import 'package:flutter/material.dart';
import 'package:radio_set/configuration/constants.dart';
import 'package:radio_set/presentation/feature/barret_setup/barret_setup_screen.dart';
import 'package:radio_set/presentation/feature/barret_setup_device_two/barret_setup_screen2.dart';
import 'package:radio_set/presentation/widgets/device_button.dart';
import 'package:radio_set/presentation/widgets/icon_button.dart';

class BarretSimulateScreen extends StatefulWidget {
  const BarretSimulateScreen({Key? key}) : super(key: key);

  @override
  State<BarretSimulateScreen> createState() => _BarretSimulateScreenState();
}

class _BarretSimulateScreenState extends State<BarretSimulateScreen> {
  bool deleteItem = false;
  int deleteIndex = 0;
  bool startTransmit = false;
  bool isConfiguredFirstDevice = false;
  bool isConfiguredSecondDevice = false;

  @override
  Widget build(BuildContext context) {
    final list = AppConstant.barretSetupList;
    debugPrint(AppConstant.barretSetupList[0].toString());
    debugPrint(AppConstant.barretSetupList[1].toString());
    print(list[0].rxFrequency);
    print(list[1].rxFrequency);
    print(list[0].txFrequency);
    print(list[1].txFrequency);
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
                  if (AppConstant.barretList.length < 2) Container(),
                  AppIconButton(
                      title: "Add",
                      onTap: () {
                        final String result =
                            AppConstant.addBarretDevice(title: "hello");
                        debugPrint(result);
                        setState(() {});
                      },
                      imageUrl: "images/barret.jpg"),
                  if (AppConstant.barretList.isNotEmpty)
                    AppIconButton(
                        title: "Delete",
                        onTap: () {
                          if (deleteItem) {
                            AppConstant.deleteBarretDevice(index: deleteIndex);
                            setState(() {
                              deleteItem = false;
                              startTransmit = false;
                              isConfiguredSecondDevice = false;
                              isConfiguredFirstDevice = false;
                            });
                          }
                        },
                        imageUrl: "images/delete.png"),
                  AppConstant.barretList.length < 2
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
                      if (AppConstant.barretList.isNotEmpty)
                        DeviceButton(
                          borderColor: startTransmit &&
                                  AppConstant.barretList.length > 1 &&
                                  isConfiguredFirstDevice &&
                                  isConfiguredSecondDevice &&
                                  (AppConstant.barretSetupList[0] !=
                                      AppConstant.barretSetupList[1])
                              ? Colors.red
                              : Colors.blue,
                          key: Key(DateTime.now().toString()),
                          imageUrl: "images/barret.jpg",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => BarretSetupScreen(
                                          isConfigured: () {
                                            setState(() {
                                              isConfiguredFirstDevice = true;
                                              startTransmit = false;
                                            });
                                          },
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
                              AppConstant.barretList.length > 1 &&
                              isConfiguredFirstDevice &&
                              isConfiguredSecondDevice
                          ? Border(
                              left: BorderSide(
                                  width: 2.0,
                                  color: (AppConstant.barretSetupList[0] ==
                                          AppConstant.barretSetupList[1])
                                      ? Colors.lightBlue
                                      : Colors.red),
                              bottom: BorderSide(
                                  width: 2.0,
                                  color: (AppConstant.barretSetupList[0] ==
                                          AppConstant.barretSetupList[1])
                                      ? Colors.lightBlue
                                      : Colors.red),
                            )
                          : null,
                    ),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (AppConstant.barretList.length > 1)
                        DeviceButton(
                          borderColor: startTransmit &&
                                  AppConstant.barretList.length > 1 &&
                                  isConfiguredFirstDevice &&
                                  isConfiguredSecondDevice &&
                                  (list[0].rxFrequency == list[1].txFrequency &&
                                      list[0].txFrequency ==
                                          list[1].rxFrequency &&
                                      list[0].operatingMode ==
                                          list[1].operatingMode &&
                                      list[0].callFormat == "International" &&
                                      list[1].callFormat == "International")
                              ? Colors.red
                              : Colors.blue,
                          key: Key(DateTime.now().toString()),
                          imageUrl: "images/barret.jpg",
                          deviceNumber: "2",
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) =>
                                        BarretSetupDeviceTwoScreen(
                                          isConfigured: () {
                                            setState(() {
                                              startTransmit = false;
                                              isConfiguredSecondDevice = true;
                                            });
                                          },
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
