import 'package:flutter/material.dart';
import 'package:project_api/screens/bottom_bar.dart';
import 'package:project_api/screens/home_screen.dart';
import 'package:project_api/screens/profile_screen.dart';
import 'package:project_api/screens/search_screen.dart';
import 'package:project_api/screens/ticket_screen.dart';
import 'package:project_api/utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return MaterialApp(
      title: 'Gene dev academy',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const ProfileScreen(),
    );
  }
}
