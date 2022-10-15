import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:radio_set/presentation/cubits/barret_setup_device_two/cubit.dart';
import 'package:radio_set/presentation/cubits/barret_setup_device_two/state.dart';


class GetTxFrequency extends StatelessWidget {
  final int pressProgramButton;

  const GetTxFrequency({Key? key, required this.pressProgramButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Press Program button $pressProgramButton");

    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const FittedBox(
            child: Text(
              "===== Tx Frequency =====",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black54,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: pressProgramButton == 2 ? Colors.white : null,
                    child: BlocBuilder<BarretSetupDeviceTwoCubit, BarretSetupDeviceTwoState>(
                      builder: (context, state) {
                        return state.txFrequency.isEmpty
                            ? const Text(
                                "00000.000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  color: Colors.black54,
                                ),
                              )
                            : Text(
                                state.txFrequency,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  color: Colors.black54,
                                ),
                              );
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "KHz",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Text(
            "Type transmit Frequency",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
          const FittedBox(
            child: Text(
              "============================",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
