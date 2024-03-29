import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:groot/firebase_api.dart';
import 'package:groot/home_page.dart';
import 'package:groot/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginScreen(),
      // home: LoginHome(),
    );
  }
}
