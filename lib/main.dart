import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF303455),
        scaffoldBackgroundColor: Color(0xFF303455),
      ),
      initialRoute: Login.id,
      routes: {Login.id: (context) => Login()},
    );
  }
}
