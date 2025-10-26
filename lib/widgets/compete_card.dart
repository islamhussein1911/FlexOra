import 'package:flutter/material.dart';

class CompeteCard extends StatelessWidget {
  const CompeteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(15),
        highlightColor: Colors.transparent,
        child: Ink(
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                Color(0xFFb148cf),
                Color(0xFFb148cf),
                Color(0xFFc7f000),
                Color(0xFFc7f000),
              ],
              stops: [0.0, 0.67, 0.67, 1.0],
              transform: GradientRotation(-3.14 / 6),

              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "COMPETE \nWITH A \nFRIEND",
                  style: TextStyle(
                    fontFamily: 'Konk',
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/player.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
