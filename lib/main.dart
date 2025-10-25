import 'package:flutter/material.dart';
import 'package:gmail_clone/pages/email_page.dart';
import 'package:gmail_clone/pages/home_page.dart';
import 'package:gmail_clone/pages/soon_page.dart';
import 'package:gmail_clone/pages/vidcam.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GMail Clone',
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(backgroundColor: Colors.grey[800]),
        primaryColor: Colors.grey[800],
        drawerTheme: DrawerThemeData(backgroundColor: Colors.grey[600]),
        scaffoldBackgroundColor: Colors.grey[600],
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
        ),
      ),
      routes: {"/soonpage": (context) => SoonPage()},
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}
