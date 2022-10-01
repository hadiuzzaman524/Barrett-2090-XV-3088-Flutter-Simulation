import 'package:flutter/material.dart';
import 'package:radio_set/presentation/widgets/icon_button.dart';

class XvSimulateScreen extends StatelessWidget {
  const XvSimulateScreen({Key? key}) : super(key: key);

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
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppIconButton(title: "+Add", onTap: () {}, imageUrl: ""),
                  AppIconButton(title: "Delete", onTap: () {}, imageUrl: ""),
                  AppIconButton(title: "SMS", onTap: () {}, imageUrl: ""),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.purple,
              ),
            )
          ],
        ),
      ),
    );
  }
}
