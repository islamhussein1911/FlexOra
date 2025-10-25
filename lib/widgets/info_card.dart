import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 19, 18, 18),
            border: GradientBoxBorder(
              gradient: LinearGradient(
                colors: [Color(0xFFb148cf), Color(0xFFc7f000)],
              ),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 15,
            children: [
              Column(
                children: [
                  Text(
                    "Age",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "21",
                    style: TextStyle(
                      color: Color(0xFFb148cf),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                child: VerticalDivider(color: Colors.white, width: 30),
              ),
              Column(
                children: [
                  Text(
                    "Weight",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "79 kg.",
                    style: TextStyle(
                      color: Color(0xFFb148cf),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: -12,
          top: -12,
          child: Material(
            color: Color.fromARGB(255, 19, 18, 18),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                // Handle edit action
              },
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                      colors: [Color(0xFFb148cf), Color(0xFFc7f000)],
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.edit, color: Color(0xFFb148cf), size: 24),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
