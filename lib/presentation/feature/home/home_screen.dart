import 'package:flutter/material.dart';
import 'package:radio_set/presentation/feature/barret/barret_screen.dart';
import 'package:radio_set/presentation/feature/home/widgets/image_button.dart';
import 'package:radio_set/presentation/feature/xv/xv_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Radio Set"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(12.0),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ImageButton(
                imageUrl: "",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const BarretScreen()));
                },
                title: 'Barret 2090',
              ),
              const SizedBox(height: 32),
              ImageButton(
                imageUrl: "",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const XvScreen()));
                },
                title: 'XV 3088',
              ),
            ],
          ),
        ));
  }
}
