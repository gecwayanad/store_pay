

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store_pay/main.dart';

class PaymentDone extends StatefulWidget {
  @override
  _PaymentDoneState createState() => _PaymentDoneState();
}

class _PaymentDoneState extends State<PaymentDone> {
  bool colorKey = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          color: Colors.white,
          

        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: const Offset(
                        0,
                        5,
                      ),
                      blurRadius: 11,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                  borderRadius: BorderRadius.circular(50),
                  color: HexColor("40BFFF")
                  
                  
                ),
                child: Icon(Icons.check_rounded, size: 40,color: Colors.white,),
              ),
              SizedBox(height: 50,),
              Text("Success", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
               SizedBox(height: 20,),
              Text("thank you for using Store pay",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12,)),),
              SizedBox(height: 30,),
              ElevatedButton(
                style:  ElevatedButton.styleFrom(
                  primary: HexColor("40BFFF"),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20)
                ),
                onPressed: (){}, child: Text("Back To Home",style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),))),

            ],
          ),
        ),
      )
    );
  }
}