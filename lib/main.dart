import 'package:flutter/material.dart';

import 'Screens/paymentScreen.dart';
import 'Screens/homeScreen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Store Pay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen()
    );

  }
}

