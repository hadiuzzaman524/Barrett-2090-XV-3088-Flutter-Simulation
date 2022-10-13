import 'package:flutter/material.dart';
import 'package:radio_set/presentation/feature/barret/barret_screen.dart';
import 'package:radio_set/presentation/feature/home/widgets/image_button.dart';
import 'package:radio_set/presentation/feature/xv/xv_screen.dart';
import 'package:radio_set/presentation/feature/xv_setup/xv_setup_screen.dart';

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
              title: 'Barret 2090',
            ),
            const SizedBox(height: 32),
            ImageButton(
              imageUrl: "images/xv3088.jpg",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const XvScreen()));
              },
              title: 'XV 3088',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: Image.asset(
                "images/logo.png",
                height: 180,
                width: 180,
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text("Barret 2090"),
              leading: const Icon(Icons.device_hub_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const BarretScreen()));
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("XV 3088"),
              leading: const Icon(Icons.device_hub_outlined),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const XvScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
