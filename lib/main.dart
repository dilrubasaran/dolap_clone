import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';
import 'mail_login.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/mail_login',
      routes: {
        '/mail_login': (context) => mailLogin(),
        '/login': (context) => Login(),
        '/home': (context) => Home(),
      },
    );
  }
}
