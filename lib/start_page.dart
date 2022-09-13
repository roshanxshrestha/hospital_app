import 'package:doctor_app/app_constants.dart';
import 'package:doctor_app/widgets.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/cover_doc1.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.only(left: 30, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              const Text(
                'Complete\nHealth\nSolutions',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: accent2Color,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Early protection for\nfamily health',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: accent2Color,
                ),
              ),
              const SizedBox(height: 450),
              buttonA('Get Started', 'home_page', context),
            ],
          ),
        ),
      ),
    );
  }
}
