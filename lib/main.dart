import 'models/destination_model.dart';
import 'package:flutter/cupertino.dart';
import 'screens/loginscreen.dart';
import 'screens/registrationscreen.dart';
import 'screens/welcomescreen.dart';
import 'screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'screens/destinationscreen.dart';
import 'package:tourism_app/screens/bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourism',
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      initialRoute: WelcomeScreen().id,
      routes: {
        WelcomeScreen().id: (context) => WelcomeScreen(),
        RegistrationScreen().id: (context) => RegistrationScreen(),
        LoginScreen().id: (context) => LoginScreen(),
        HomeScreen().id: (context) => HomeScreen(),
        DestinationScreen().id: (context) => DestinationScreen(),
        MyBottomNavigation().id: (context) => MyBottomNavigation(),
      },
    );
  }
}