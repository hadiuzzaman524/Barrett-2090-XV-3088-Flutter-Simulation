import 'package:flutter/material.dart';
import 'package:radio_set/presentation/widgets/barret_button_row.dart';

class BarretSetupScreen extends StatelessWidget {
  const BarretSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.blue,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BarretButtonRow(
                firstButtonImageUrl: "images/menu.PNG",
                secondButtonImageUrl: 'images/clear.PNG',
                thirdButtonImageUrl: 'images/prog.PNG',
                onTapFirstButton: () {},
                onTapSecondButton: () {},
                onTapThirdButton: () {},
              ),
              BarretButtonRow(
                firstButtonImageUrl: "images/one.PNG",
                secondButtonImageUrl: 'images/two.PNG',
                thirdButtonImageUrl: 'images/three.PNG',
                onTapFirstButton: () {},
                onTapSecondButton: () {},
                onTapThirdButton: () {},
              ),
              BarretButtonRow(
                firstButtonImageUrl: "images/four.png",
                secondButtonImageUrl: 'images/five.png',
                thirdButtonImageUrl: 'images/six.png',
                onTapFirstButton: () {},
                onTapSecondButton: () {},
                onTapThirdButton: () {},
              ),
              BarretButtonRow(
                firstButtonImageUrl: "images/seven.png",
                secondButtonImageUrl: 'images/eight.png',
                thirdButtonImageUrl: 'images/nine.png',
                onTapFirstButton: () {},
                onTapSecondButton: () {},
                onTapThirdButton: () {},
              ),
              BarretButtonRow(
                firstButtonImageUrl: "images/tune.png",
                secondButtonImageUrl: 'images/zero.png',
                thirdButtonImageUrl: 'images/chan.png',
                onTapFirstButton: () {},
                onTapSecondButton: () {},
                onTapThirdButton: () {},
              ),
              BarretButtonRow(
                firstButtonImageUrl: "images/lside.png",
                secondButtonImageUrl: 'images/danger.png',
                thirdButtonImageUrl: 'images/rside.png',
                onTapFirstButton: () {},
                onTapSecondButton: () {},
                onTapThirdButton: () {},
              ),
              BarretButtonRow(
                firstButtonImageUrl: "images/upper.png",
                secondButtonImageUrl: 'images/call.png',
                thirdButtonImageUrl: 'images/volplus.png',
                onTapFirstButton: () {},
                onTapSecondButton: () {},
                onTapThirdButton: () {},
              ),
              BarretButtonRow(
                firstButtonImageUrl: "images/lower.png",
                secondButtonImageUrl: 'images/enter.png',
                thirdButtonImageUrl: 'images/volminus.png',
                onTapFirstButton: () {},
                onTapSecondButton: () {},
                onTapThirdButton: () {},
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
