import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderWidget extends StatelessWidget {
  final Gender gender;

  const GenderWidget({super.key, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Image.asset(
                gender == Gender.male
                    ? 'assets/images/male.png'
                    : 'assets/images/female.png',
                height: 80,
                width: 80,
              ),
              SizedBox(height: 8),
              Text(
                gender == Gender.male ? 'Male' : 'Female',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
