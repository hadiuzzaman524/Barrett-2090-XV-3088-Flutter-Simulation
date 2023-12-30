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
        title: const Text("RadioGram"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageButton(
              imageUrl: "images/barret.jpg",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const BarretScreen()));
              },
              title: 'Barrett 2090',
            ),
            const SizedBox(height: 32),
            ImageButton(
              imageUrl: "images/xv30.jpeg",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const XvScreen()));
              },
              title: 'XV 3088',
            ),
          ],
        ),
      ),
    );
  }
}
