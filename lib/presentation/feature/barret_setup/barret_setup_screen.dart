import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_set/presentation/widgets/barret_button_row.dart';

import '../../cubits/barret_setup/cubit.dart';
import '../../cubits/barret_setup/state.dart';

class BarretSetupScreen extends StatefulWidget {
  const BarretSetupScreen({Key? key}) : super(key: key);

  @override
  State<BarretSetupScreen> createState() => _BarretSetupScreenState();
}

class _BarretSetupScreenState extends State<BarretSetupScreen> {
  bool setChannel = false;

  @override
  Widget build(BuildContext context) {
    final barretCubit= context.read<BarretSetupCubit>();
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
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffDCDCDE),
              border: Border.all(color: Colors.white30, width: 2),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Channel:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    BlocBuilder<BarretSetupCubit, BarretSetupState>(
                      builder: (context, state) {
                        return Text(
                          state.channelNumber,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                    setChannel
                        ? const BlinkText(
                            "_",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : const Text(""),
                  ],
                ),
                Expanded(
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
                    onTapFirstButton: () {
                      if(setChannel){
                        barretCubit.setChannelNumber(channelNumber: "1");
                      }
                    },

                    ///two
                    onTapSecondButton: () {
                      if(setChannel){
                        barretCubit.setChannelNumber(channelNumber: "2");
                      }
                    },

                    ///three
                    onTapThirdButton: () {
                      if(setChannel){
                        barretCubit.setChannelNumber(channelNumber: "3");
                      }
                    },
                  ),
                  BarretButtonRow(
                    firstButtonImageUrl: "images/four.png",
                    secondButtonImageUrl: 'images/five.png',
                    thirdButtonImageUrl: 'images/six.png',

                    ///four
                    onTapFirstButton: () {
                      if(setChannel){
                        barretCubit.setChannelNumber(channelNumber: "4");
                      }
                    },

                    ///five
                    onTapSecondButton: () {
                      if(setChannel){
                        barretCubit.setChannelNumber(channelNumber: "5");
                      }
                    },

                    ///six
                    onTapThirdButton: () {
                      if(setChannel){
                        barretCubit.setChannelNumber(channelNumber: "6");
                      }
                    },
                  ),
                  BarretButtonRow(
                    firstButtonImageUrl: "images/seven.png",
                    secondButtonImageUrl: 'images/eight.png',
                    thirdButtonImageUrl: 'images/nine.png',

                    ///seven
                    onTapFirstButton: () {
                      if(setChannel){
                        barretCubit.setChannelNumber(channelNumber: "7");
                      }
                    },

                    ///eight
                    onTapSecondButton: () {
                      if(setChannel){
                        barretCubit.setChannelNumber(channelNumber: "8");
                      }
                    },

                    ///nine
                    onTapThirdButton: () {
                      if(setChannel){
                        barretCubit.setChannelNumber(channelNumber: "9");
                      }
                    },
                  ),
                  BarretButtonRow(
                    firstButtonImageUrl: "images/tune.png",
                    secondButtonImageUrl: 'images/zero.png',
                    thirdButtonImageUrl: 'images/chan.png',

                    ///tune
                    onTapFirstButton: () {},

                    ///zero
                    onTapSecondButton: () {
                      if(setChannel){
                        barretCubit.setChannelNumber(channelNumber: "0");
                      }
                    },
                    ///channnel
                    onTapThirdButton: () {
                      setState(() {
                        setChannel = !setChannel;
                      });
                    if(setChannel){
                      barretCubit.clearChannelNumber();
                    }
                    },
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
