import 'package:flutter/material.dart';
import 'package:my_flutter_app/utils/routes.dart';

class MyAttendance extends StatefulWidget {
  const MyAttendance({super.key});

  @override
  State<MyAttendance> createState() => _MyAttendanceState();
}

class _MyAttendanceState extends State<MyAttendance> {
  // List of participant names
  final List<String> participants = [
    "Jay Jariwala",
    "Om Prasad",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Attended Participants"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 237, 155, 68),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...participants.asMap().entries.map((entry) {
                int idx = entry.key;
                String name = entry.value;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Card(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "${idx + 1}. $name",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),

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
      ),
    );
  }
}
