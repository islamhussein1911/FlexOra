import 'package:app/screens/account_screen.dart';
import 'package:app/screens/friends_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/notifications_screen.dart';
import 'package:flutter/material.dart';

List<Widget> screens = [
  HomeScreen(),
  FriendsScreen(),
  NotificationsScreen(),
  AccountScreen(),
];
int currentIndex = 0;
