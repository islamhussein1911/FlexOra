import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 36,
                backgroundColor: Color(0xFFc7f000),
                child: CircleAvatar(
                  radius: 34,
                  backgroundColor: Color.fromARGB(255, 19, 18, 18),
                  child: Icon(Icons.person, size: 48, color: Color(0xFFc7f000)),
                ),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Islam Hussein",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "islamhesin6@gmail.com",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
