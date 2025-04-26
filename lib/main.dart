import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/attendance.dart';
import 'package:my_flutter_app/pages/imagepage.dart';
import 'package:my_flutter_app/pages/participant.dart';
import 'pages/homepage.dart';
import 'pages/loginpage.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.attendedParticipantsRoute: (context) => MyAttendance(),
        MyRoutes.noOfParticipantsRoute: (context) => MyParticipants(),
        MyRoutes.imageRoute : (context) => MyImage(),
      },
    );
  }
}
