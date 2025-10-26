import 'package:flutter/material.dart';

class OnlineFriend extends StatelessWidget {
  final String? name;
  final String? imageUrl;
  const OnlineFriend({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFFb148cf), Color(0xFFc7f000)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Container(
                    width: 77,
                    height: 77,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF404040),
                    ),
                    child:
                        imageUrl != null
                            ? ClipOval(
                              child: Image.network(
                                imageUrl!,
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            )
                            : Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset('assets/icons/user.png'),
                            ),
                  ),
                ),
              ),
              Positioned(
                top: 60,
                right: 4,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            name!,
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
