import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Splashscreen.dart';
import 'Onboardingscreen.dart';
import 'authscreen.dart';
import 'mapscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GPS Map App',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/home': (context) => MapScreen(),
        '/auth': (context) => AuthScreen(),
      },
    );
  }
}
