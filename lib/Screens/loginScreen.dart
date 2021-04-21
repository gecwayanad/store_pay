
//extra added
//------------------
//pluggins:
//googlefonts

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column( //main widget column
          children: <Widget>[
            Container(//top container
              child: Stack(//stack for t
                children: <Widget>[
                  Container(
                    child: Center(child: Text("StorePay", style: GoogleFonts.originalSurfer(height: 10),)),

                  )
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}