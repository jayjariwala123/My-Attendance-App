import 'package:flutter/material.dart';
import 'package:my_flutter_app/utils/routes.dart';

class MyParticipants extends StatefulWidget {
  const MyParticipants({super.key});

  @override
  State<MyParticipants> createState() => _MyParticipantsState();
}

class _MyParticipantsState extends State<MyParticipants> {
  // List of participant names
  final List<String> participants = [
    "Jay Jariwala",
    "Om Prasad",
    "Aryan Patel",
    "Riya Sharma",
    "Priya Desai",
    "Ankit Mehta",
    "Sneha Verma",
    "Rahul Nair",
    "Pooja Kapoor",
    "Vishal Yadav",
    "Neha Sinha",
    "Aman Joshi",
    "Divya Gupta",
    "Rohit Thakur",
    "Kriti Agarwal",
    "Varun Bansal",
    "Ananya Rao",
    "Siddharth Iyer",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Total Participants"),
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
