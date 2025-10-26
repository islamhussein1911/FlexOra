import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String? name;
  const ChatTile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xFF404040),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          // Handle chat tile tap
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 8.0),
            child: Row(
              children: [
                Text(
                  "${name!}: ",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "last message preview here...",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontSize: 14,
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
