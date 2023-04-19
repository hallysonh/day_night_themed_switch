import 'package:day_night_themed_switch/day_night_themed_switch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Day Night Switch",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffd1d9e6),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: SizedBox(
              height: 100,
              child: DayNightSwitch(value: false, onChanged: (_) {}),
            ),
          ),
        ),
      ),
    );
  }
}
