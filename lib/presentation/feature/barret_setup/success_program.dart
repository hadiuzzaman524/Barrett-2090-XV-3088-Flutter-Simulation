import 'package:flutter/material.dart';

class SuccessProgram extends StatefulWidget {
  final VoidCallback back;

  const SuccessProgram({Key? key, required this.back}) : super(key: key);

  @override
  State<SuccessProgram> createState() => _SuccessProgramState();
}

class _SuccessProgramState extends State<SuccessProgram> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2))
        .then((value) => {widget.back()});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const FittedBox(
            child: Text(
              "====== Program ======",
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
                children: const [
                  Text(
                    "Channel Programmed",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.cloud_done_outlined,
                  )
                ],
              ),
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
