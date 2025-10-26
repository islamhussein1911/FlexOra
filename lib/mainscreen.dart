import 'package:flutter/material.dart';
import 'package:app/data.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// This is the main frame screen which contains the bottom navigation bar
// and other screens
// like HomeScreen, FriendsScreen, AccountScreen, NotificationsScreen, etc.

class MainsSreen extends StatefulWidget {
  const MainsSreen({super.key});

  @override
  State<MainsSreen> createState() => _MainsSreenState();
}

class _MainsSreenState extends State<MainsSreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF121111), Color(0xFF263724), Color(0xFF2C9223)],

          begin: Alignment.center,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: screens[currentIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GNav(
                selectedIndex: currentIndex,
                onTabChange: (value) {
                  currentIndex = value;
                  setState(() {});
                },
                backgroundColor: Colors.transparent,
                color: Colors.white,
                activeColor: Color(0xFFb148cf),
                tabBorderRadius: 15,
                tabBackgroundColor: Color(0xFFc7f000),

                gap: 8,
                tabs: [
                  GButton(icon: Icons.home_outlined),
                  GButton(icon: Icons.people_outline),
                  GButton(icon: Icons.notifications_outlined),
                  GButton(icon: Icons.person_outline),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
