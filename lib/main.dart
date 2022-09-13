import 'package:doctor_app/home_page.dart';
import 'package:doctor_app/reminder.dart';
import 'package:doctor_app/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'start_page',
      routes: {
        'start_page': (context) => const StartPage(),
        'home_page': (context) => const HomePage(),
        'reminder': (context) => const Reminder(),
      },
    ),
  );
}
