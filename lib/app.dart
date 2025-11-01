import 'package:app/mainscreen.dart';
import 'package:app/screens/account_screen.dart';
import 'package:app/screens/friends_screen.dart';
import 'package:app/screens/registration_screen_cont.dart';
import 'package:flutter/material.dart';

// // PUT THE SCREEN YOU WANT TO TEST OR RUN IN THE HOME PARAMETER BELOW

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationScreenCont(),
    );
  }
}
