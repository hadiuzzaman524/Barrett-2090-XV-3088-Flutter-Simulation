import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_set/presentation/cubits/barret_setup/cubit.dart';
import 'package:radio_set/presentation/cubits/barret_setup/state.dart';

class GetRxFrequency extends StatelessWidget {
  final int pressProgramButton;

  const GetRxFrequency({Key? key, required this.pressProgramButton})
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
              "===== Rx Frequency =====",
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
                    color: pressProgramButton==1?Colors.white: null,
                    child: BlocBuilder<BarretSetupCubit, BarretSetupState>(
                      builder: (context, state) {
                        return state.rxFrequency.isEmpty
                            ? const Text(
                                "00000.000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  color: Colors.black54,
                                ),
                              )
                            : Text(
                                state.rxFrequency,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  color: Colors.black54,
                                ),
                              );
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
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
          Text(
            "Typereceive Frequency",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
          FittedBox(
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
