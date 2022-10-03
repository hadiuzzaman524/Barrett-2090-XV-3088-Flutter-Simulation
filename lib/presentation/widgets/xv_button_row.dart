import 'package:flutter/material.dart';
import 'package:radio_set/presentation/widgets/xv_button.dart';

class XvButtonRow extends StatelessWidget {
  const XvButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: const [
          XvButton(),
          XvButton(),
          XvButton(),
          XvButton(),
          XvButton(),
        ],
      ),
    );
  }
}
