import 'package:flutter/material.dart';
import 'package:my_flutter_app/utils/routes.dart';

class MyImage extends StatefulWidget {
  const MyImage({super.key});

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR Code Scanner"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 237, 155, 68),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Image(image: AssetImage("assets/images/qrcode.jpeg"))
                ],
              ),
            ),
            const SizedBox(height: 20.0),

              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade400,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: const Text(
                    "Go to Home",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          ],
        ),
        ),
    );
  }
}