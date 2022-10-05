import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_set/presentation/cubits/xv_setup/cubit.dart';
import 'package:radio_set/presentation/cubits/xv_setup/cubit.dart';

import '../../cubits/xv_setup/state.dart';

class XvDeviceScreen extends StatelessWidget {
  const XvDeviceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff849E93),
          border: Border.all(color: const Color(0xff9EA79E), width: 4)),
      height: 120,
      child: Row(
        children: [
          BlocBuilder<XvSetupCubit, XvSetupState>(
            builder: (context, state) {
              return Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 280,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Spacer(),
                          Text("SEC"),
                          SizedBox(width: 12),
                          Text("SEL"),
                          SizedBox(width: 12),
                          Text("SQ 150"),
                          SizedBox(width: 48),
                          Text("HI"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Row(
                        children: [
                          const BlinkText(
                            "CH",
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            state.channelName.isEmpty ? "0" : state.channelName,
                            style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("F"),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            state.frequency.isEmpty
                                ? "00.000"
                                : state.frequency,
                            style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("MHZ")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 280,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Spacer(),
                          Text("SDX"),
                          SizedBox(width: 48),
                          Text("LOW"),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
