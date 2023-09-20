import 'package:flutter/material.dart';
import 'package:house/src/ui/onboarding/onboarding_animate/on_board.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'House',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white),
        backgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnBoard()
    );
  }
}


