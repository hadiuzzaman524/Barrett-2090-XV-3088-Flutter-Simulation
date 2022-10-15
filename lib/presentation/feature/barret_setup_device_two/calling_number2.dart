import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../cubits/barret_setup_device_two/cubit.dart';
import '../../cubits/barret_setup_device_two/state.dart';

class CallingNumberTaker extends StatelessWidget {
  const CallingNumberTaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
           FittedBox(
            child: BlocBuilder<BarretSetupDeviceTwoCubit, BarretSetupDeviceTwoState>(
              builder: (context, state) {
                return Text(
                  "===== ${state.callOption} =====",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black54,
                  ),
                );
              },
            ),
          ),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "ID",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        color: Colors.black54,
                        child: const Text(
                          "      0816",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white70,
                          ),
                        ),
                      )
                    ],
                  ),
const SizedBox(height: 4,),
                  const Text(
                    "Press enter for Address Book",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54
                    ),
                  ),
                  Spacer(),
                  const Text(
                    "Press Call to Continue",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ],
              )),
          const FittedBox(
            child: Text(
              "============================",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
