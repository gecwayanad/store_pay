import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
              height: 225,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: Offset(0, 7),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Currently opened stores',
                      style: GoogleFonts.robotoCondensed(
                          fontWeight: FontWeight.w900, fontSize: 15),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('See all'),
                    )
                  ],
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/filename.jpg',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(children: [
                              Text(
                                'Store name one',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Discription',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 13),
                              )
                            ]),
                            SizedBox(
                              width: 30,
                            ),
                            IconButton(
                                icon: const Icon(
                                  Icons.call,
                                  color: Colors.blue,
                                ),
                                onPressed: () {})
                          ],
                        ))),
                Row(children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Currently closed stores',
                    style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.w900, fontSize: 15),
                    textAlign: TextAlign.start,
                  ),
                ]),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/filename.jpg',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(children: [
                              Text('Store name one'),
                              Text(
                                'Discription',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 13),
                              )
                            ]),
                            SizedBox(
                              width: 32,
                            ),
                            IconButton(
                                icon: const Icon(
                                  Icons.call,
                                  color: Colors.blue,
                                ),
                                onPressed: () {})
                          ],
                        ))),
              ])),
          // 2nd container
          Container(
              height: 70,
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: Offset(0, 7),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'asset/payment.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Make payment',
                    style: GoogleFonts.lato(fontSize: 15),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      child: Text('Pay')),
                ],
              )),
          //container 3
          Container(
              height: 70,
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: Offset(0, 7),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'asset/balance.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Check balance',
                    style: GoogleFonts.lato(fontSize: 15),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      child: Text('Check')),
                ],
              )),
          //container 4
          Container(
              height: 70,
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: Offset(0, 7),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'asset/paymenthistory.png',
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Payment history',
                    style: GoogleFonts.lato(fontSize: 15),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      child: Text('Check')),
                ],
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[900],
        selectedFontSize: 0,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
        selectedItemColor: Colors.lightBlue,
      ),
    );
  }
}
