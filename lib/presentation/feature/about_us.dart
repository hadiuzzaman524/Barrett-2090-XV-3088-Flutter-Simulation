import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Our Team"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(
                height: 16,
              ),
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 82,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("images/munif.jpg"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Capt Munif",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Divider(),
              SizedBox(
                height: 16,
              ),
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 82,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("images/touhid.jpg"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Capt Tauhid",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Divider(),
              SizedBox(
                height: 16,
              ),
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 82,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("images/nayma.jpg"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Capt Nayma",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Divider(),
              SizedBox(
                height: 16,
              ),
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 82,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("images/ilham.JPG"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Lt Ilham",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
