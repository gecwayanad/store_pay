import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:store_pay/Screens/paymentDone.dart';
import 'Screens/paymentScreen.dart';
=======
import 'package:store_pay/Screens/loginScreen.dart';
>>>>>>> master

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
<<<<<<< HEAD
      home: PaymentDone()
=======
      home: LoginScreen(),
>>>>>>> master
    );
  }
}

