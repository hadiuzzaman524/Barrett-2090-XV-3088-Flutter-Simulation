import 'package:flutter/material.dart';
import 'package:radio_set/presentation/widgets/barret_button_row.dart';

class BarretSetupScreen extends StatelessWidget {
  const BarretSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 30, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          border: Border.all(width: 3, color: Colors.white30)),
      child: Column(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffDCDCDE),
              border: Border.all(color: Colors.white30, width: 2),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            ),
            child: Row(
              children: [
                Image.asset(
                  "images/rx.gif",
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 8),
                  BarretButtonRow(
                    firstButtonImageUrl: "images/menu.PNG",
                    secondButtonImageUrl: 'images/clear.PNG',
                    thirdButtonImageUrl: 'images/prog.PNG',

                    ///menu
                    onTapFirstButton: () {},

                    ///clear
                    onTapSecondButton: () {},

                    ///prog
                    onTapThirdButton: () {},
                  ),
                  BarretButtonRow(
                    firstButtonImageUrl: "images/one.PNG",
                    secondButtonImageUrl: 'images/two.PNG',
                    thirdButtonImageUrl: 'images/three.PNG',

                    ///one
                    onTapFirstButton: () {},

                    ///two
                    onTapSecondButton: () {},

                    ///three
                    onTapThirdButton: () {},
                  ),
                  BarretButtonRow(
                    firstButtonImageUrl: "images/four.png",
                    secondButtonImageUrl: 'images/five.png',
                    thirdButtonImageUrl: 'images/six.png',

                    ///four
                    onTapFirstButton: () {},

                    ///five
                    onTapSecondButton: () {},

                    ///six
                    onTapThirdButton: () {},
                  ),
                  BarretButtonRow(
                    firstButtonImageUrl: "images/seven.png",
                    secondButtonImageUrl: 'images/eight.png',
                    thirdButtonImageUrl: 'images/nine.png',

                    ///seven
                    onTapFirstButton: () {},

                    ///eight
                    onTapSecondButton: () {},

                    ///nine
                    onTapThirdButton: () {},
                  ),
                  BarretButtonRow(
                    firstButtonImageUrl: "images/tune.png",
                    secondButtonImageUrl: 'images/zero.png',
                    thirdButtonImageUrl: 'images/chan.png',

                    ///tune
                    onTapFirstButton: () {},

                    ///zero
                    onTapSecondButton: () {},

                    ///chan
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
          ),
        ],
      ),
    ));
  }
}
