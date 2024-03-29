import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white
        ),
        textTheme: TextTheme(
          title: TextStyle(color: Colors.white,fontSize: 16),
          body1: TextStyle(color: Colors.black),
          button: TextStyle(color: Colors.white)
      ),
      bottomAppBarColor: Colors.white
      ),
      home: Home(),
    );
  }
}