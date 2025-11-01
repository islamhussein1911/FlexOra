import 'package:flutter/material.dart';

class LetsGetToKnowYouWidget extends StatelessWidget {
  final String txt;
  final Widget widget;
  const LetsGetToKnowYouWidget({
    super.key,
    required this.txt,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        SizedBox(width: 10),
        widget,
      ],
    );
  }
}
