import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          onboardingPage("Welcome", "Find places easily!", Icons.map),
          onboardingPage(
              "Track", "Track your location in real-time!", Icons.location_on),
          onboardingPage(
              "Secure", "Save data securely with Firebase!", Icons.lock),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        child: const Text("Get Started"),
      ),
    );
  }

  Widget onboardingPage(String title, String subtitle, IconData icon) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 100),
          Text(title,
              style:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text(subtitle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
