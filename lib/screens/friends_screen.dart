import 'package:app/widgets/chat_tile.dart';
import 'package:app/widgets/compete_card.dart';
import 'package:app/widgets/online_friend.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

/// Friends List Screen

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 15),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  GradientText(
                    colors: [Color(0xFFb148cf), Color(0xFFc7f000)],
                    "FRIENDS",

                    style: TextStyle(
                      fontFamily: 'Konk',
                      letterSpacing: 2,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 120,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return OnlineFriend(
                                name: "Friend ${index + 1}",
                                imageUrl: null,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Chats",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Konk',
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: ChatTile(name: "Friend ${index + 1}"),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  CompeteCard(),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
