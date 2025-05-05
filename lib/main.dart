import 'package:flutter/material.dart';
import 'package:grade_project_test1/foodpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.green),
          textTheme: TextTheme(
              bodyLarge: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              bodyMedium: TextStyle(color: Colors.green, fontSize: 16),
              bodySmall: TextStyle(color: Colors.red, fontSize: 14))),
      debugShowCheckedModeBanner: false,
      home: FoodPage(),
    );
  }
}
