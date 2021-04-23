import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //Backward button
          IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.grey[850],
              onPressed: () {}),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white70,
                          border: Border.all(color: Colors.black, width: 2.0)),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        //Icon of the profile
                        child: Text('A',
                            style: GoogleFonts.robotoSlab(fontSize: 40)),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.arrow_forward_sharp),
                  SizedBox(width: 20),
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white70,
                          border: Border.all(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        //showing store 1 or store 2
                        child: Text('Store ',
                            style: GoogleFonts.ubuntuMono(fontSize: 25)),
                      )),
                ],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    margin: EdgeInsets.fromLTRB(150, 0, 10, 0),
                    //textfield for entering money
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.exo(
                          fontSize: 40, fontWeight: FontWeight.w600),
                      cursorHeight: 40,
                      cursorWidth: 1,
                      decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: Text("Rs ",
                              style: GoogleFonts.exo(
                                  fontSize: 40, fontWeight: FontWeight.w600)),
                          hintText: '0',
                          hintStyle: GoogleFonts.exo(
                              fontSize: 40, fontWeight: FontWeight.w600),
                          border: InputBorder.none),
                    )),
              ]),
              SizedBox(height: 10),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black12,
                  ),
                  margin: EdgeInsets.fromLTRB(100, 0, 100, 0),
                  child: TextField(
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  )),
            ],
          ),
        ]),
        //button for forward
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.keyboard_arrow_right),
        ));
  }
}
