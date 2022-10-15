import 'package:flutter/material.dart';

class TransmissionSuccessDialog extends StatelessWidget {
  final bool success;
  const TransmissionSuccessDialog({Key? key, required this.success}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      color: const Color(0xff737373),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        ),
        child: Column(
          children: [
            Container(
              height: 8,
              width: 40,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
                child: success? Column(
              children: const [
                Icon(
                  Icons.done_outline_outlined,
                  color: Colors.green,
                  size: 80,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Message Transmitted!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 26),
                ),
              ],
            ): Column(
                  children: const [
                    Icon(
                      Icons.sms_failed,
                      color: Colors.red,
                      size: 80,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Transmission Failed",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 26),
                    ),
                  ],
                ) ),
          ],
        ),
      ),
    );
  }
}
