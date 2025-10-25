import 'package:app/widgets/info_card.dart';
import 'package:app/widgets/pentagon_card.dart';
import 'package:app/widgets/user_info.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

// Account Center Screen

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1b1a1a),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              GradientText(
                colors: [Color(0xFFb148cf), Color(0xFFc7f000)],
                "Account Center",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              // User Info
              UserInfo(),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Divider(color: Color.fromARGB(182, 200, 240, 0)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [InfoCard()],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [PentagonCard()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
