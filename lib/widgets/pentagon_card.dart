import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:lottie/lottie.dart';

class PentagonCard extends StatelessWidget {
  const PentagonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(30),

        color: Color.fromARGB(255, 19, 18, 18),
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () {
            // The action that opens the analytics page or dashboard goes here
          },
          child: Container(
            padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: GradientBoxBorder(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [Color(0xFFb148cf), Color(0xFFc7f000)],
                ),
                width: 4,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dashboard",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Lottie.asset(
                    'assets/animations/analytics4.json',
                    height: 160,
                    width: 160,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
