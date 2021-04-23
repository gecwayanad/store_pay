
//extra added
//------------------
//pluggins:
//1.googlefonts
//2.hexcolor (to support hexa colour code)
//
//files:
//1.thirdpartyDartFiles/clip_shadow_path.dart(for shadow clippath:currently not using iin this page ,may be it will usefull in future)
//
//pending features:
//------------------
//1.animation for login button
//
//
////problems faced:
//------------------
//1.clipped container can only be added as the children of stack...column cant be used

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

bool securityeye = true;//this bool is for changing icon color in password textFormfield && changing obsecure

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;//for obtain device width && height
    return Material(
      child:
          Stack(
            children: <Widget>[
              
               ClipPath(clipper: SecondContainerclipper(),//second container clipped
                   child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(

              colors:[
                    HexColor("0575E6"),HexColor("0575E6"),HexColor("0575E6"),HexColor("0575E6"), HexColor("021B79")//hex pluggin used

                    ])
                  ),
                ),
              ),
               ClipPath(clipper: FirstContainerclipper(),//first container clipped
                   child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
              colors:[
                    HexColor("021B79"), HexColor("0575E6")//hex pluggin used

                    ])
                  ),
                ),
              ),
              


        Padding(
          padding:  EdgeInsets.only(top:size.height *.3),
          child: ClipPath(clipper: ThirdContainerclipper(),//third container clipped
                 child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
            colors:[
                  HexColor("0575E6"), HexColor("021B79")//hex pluggin used


                  ])
                ),
              ),
            ),
        ),
          //text container
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 100, 0,0),
            child: Container(
              child: Text("login", style: GoogleFonts.condiment(textStyle: TextStyle(fontSize: 40, //google fonts pluggin
              color: Colors.white
              )),),

            ),
          ),

          //another container in stach
          Padding(
            padding: EdgeInsets.fromLTRB(8, size.height * .35, 8, 0),
            child: Container(
              //storepay headding.....

              child: Column(
                children: [
                  Text("StorePay", style: GoogleFonts.condiment(textStyle: TextStyle(fontSize: 30,  
                  color: HexColor("033194")
                  )),),
                  SizedBox(height: 20,),





                  //username field.......
                TextFormField(
                  decoration: InputDecoration(hintText: "username",
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
                  ),
                  ),
                ),
                SizedBox(height: 20,),





                //password field......
                TextFormField(
                  obscureText: securityeye,
                  
                  decoration: InputDecoration(hintText: "password",
                  
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: IconButton(icon: securityeye == true ? Icon(Icons.remove_red_eye) :Icon(Icons.remove_red_eye,color: Colors.red,), onPressed: () { 

                      setState(() {
                        securityeye = !securityeye;
                      });

                     },),
                  ),
                  border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                   enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  ),
                ),
                SizedBox(height: 20,),






                //forgot password..........
                GestureDetector(
                  onDoubleTap: (){
                    
                  },
                                  child: Padding(
                    padding: EdgeInsets.only(right:20),
                    child: Container(
                      alignment: Alignment.centerRight,
                      
                      child: Text("forgot password??", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 14,),),)),
                  ),
                ),
                SizedBox(height: 20,),



                //login button..........
                GestureDetector(
                  onTap: (){
                    //ontap code here
                    
                    //animation
                    
                  },
                                  child: Container(
                    alignment: Alignment.center,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        HexColor("021B79"), HexColor("0575E6")
                      ])
                    ),
                    width: 200,
                    height: 50,
                    padding:EdgeInsets.all(4),
                    child: Text("Login", style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20, color: Colors.white)),
                  )
                  ),
                )
              ],),
            ),
          )
        ],
      )
    
    );
  }
}

//im adding a custom clipper for first container as another class 
//
class FirstContainerclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(-7.99609 * _xScaling,-83.9076 * _yScaling);
    path.cubicTo(-7.99609 * _xScaling,-87.7736 * _yScaling,-4.86209 * _xScaling,-90.9076 * _yScaling,-0.996094 * _xScaling,-90.9076 * _yScaling,);
    path.cubicTo(-0.996094 * _xScaling,-90.9076 * _yScaling,548.004 * _xScaling,-90.9076 * _yScaling,548.004 * _xScaling,-90.9076 * _yScaling,);
    path.cubicTo(551.87 * _xScaling,-90.9076 * _yScaling,555.004 * _xScaling,-87.7736 * _yScaling,555.004 * _xScaling,-83.9076 * _yScaling,);
    path.cubicTo(555.004 * _xScaling,-83.9076 * _yScaling,555.004 * _xScaling,216.161 * _yScaling,555.004 * _xScaling,216.161 * _yScaling,);
    path.cubicTo(555.004 * _xScaling,220.082 * _yScaling,549.495 * _xScaling,220.95 * _yScaling,548.289 * _xScaling,217.219 * _yScaling,);
    path.cubicTo(518.998 * _xScaling,126.566 * _yScaling,409.099 * _xScaling,91.8011 * _yScaling,333.001 * _xScaling,149.116 * _yScaling,);
    path.cubicTo(333.001 * _xScaling,149.116 * _yScaling,252.085 * _xScaling,210.059 * _yScaling,252.085 * _xScaling,210.059 * _yScaling,);
    path.cubicTo(178.01 * _xScaling,259.756 * _yScaling,84.7266 * _xScaling,271.297 * _yScaling,0.773559 * _xScaling,241.149 * _yScaling,);
    path.cubicTo(0.773559 * _xScaling,241.149 * _yScaling,-7.4859 * _xScaling,238.183 * _yScaling,-7.4859 * _xScaling,238.183 * _yScaling,);
    path.cubicTo(-7.79196 * _xScaling,238.073 * _yScaling,-7.99609 * _xScaling,237.783 * _yScaling,-7.99609 * _xScaling,237.458 * _yScaling,);
    path.cubicTo(-7.99609 * _xScaling,237.458 * _yScaling,-7.99609 * _xScaling,-83.9076 * _yScaling,-7.99609 * _xScaling,-83.9076 * _yScaling,);
    path.cubicTo(-7.99609 * _xScaling,-83.9076 * _yScaling,-7.99609 * _xScaling,-83.9076 * _yScaling,-7.99609 * _xScaling,-83.9076 * _yScaling,);
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  }

//adding custom clipper for second container

class SecondContainerclipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(189.706 * _xScaling,99.1203 * _yScaling);
    path.cubicTo(190.234 * _xScaling,99.0404 * _yScaling,190.769 * _xScaling,99.021 * _yScaling,191.3 * _xScaling,99.0625 * _yScaling,);
    path.cubicTo(191.3 * _xScaling,99.0625 * _yScaling,617.555 * _xScaling,132.34 * _yScaling,617.555 * _xScaling,132.34 * _yScaling,);
    path.cubicTo(622.688 * _xScaling,132.741 * _yScaling,625.647 * _xScaling,138.36 * _yScaling,623.073 * _xScaling,142.819 * _yScaling,);
    path.cubicTo(623.073 * _xScaling,142.819 * _yScaling,451.494 * _xScaling,440.002 * _yScaling,451.494 * _xScaling,440.002 * _yScaling,);
    path.cubicTo(449.273 * _xScaling,443.849 * _yScaling,443.378 * _xScaling,441.557 * _yScaling,444.338 * _xScaling,437.22 * _yScaling,);
    path.cubicTo(467.848 * _xScaling,331.047 * _yScaling,378.555 * _xScaling,233.861 * _yScaling,270.775 * _xScaling,248.314 * _yScaling,);
    path.cubicTo(270.775 * _xScaling,248.314 * _yScaling,159.397 * _xScaling,263.25 * _yScaling,159.397 * _xScaling,263.25 * _yScaling,);
    path.cubicTo(58.6933 * _xScaling,271.15 * _yScaling,-39.5904 * _xScaling,229.734 * _yScaling,-104.268 * _xScaling,152.142 * _yScaling,);
    path.cubicTo(-104.268 * _xScaling,152.142 * _yScaling,-109.564 * _xScaling,145.787 * _yScaling,-109.564 * _xScaling,145.787 * _yScaling,);
    path.cubicTo(-109.987 * _xScaling,145.28 * _yScaling,-109.693 * _xScaling,144.507 * _yScaling,-109.041 * _xScaling,144.408 * _yScaling,);
    path.cubicTo(-109.041 * _xScaling,144.408 * _yScaling,189.706 * _xScaling,99.1203 * _yScaling,189.706 * _xScaling,99.1203 * _yScaling,);
    path.cubicTo(189.706 * _xScaling,99.1203 * _yScaling,189.706 * _xScaling,99.1203 * _yScaling,189.706 * _xScaling,99.1203 * _yScaling,);
    return path;
  }
  
    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}
//iam creating third class for third clipshadow
class ThirdContainerclipper extends CustomClipper <Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(488.047 * _xScaling,1012.5 * _yScaling);
    path.cubicTo(487.77 * _xScaling,1016.36 * _yScaling,484.418 * _xScaling,1019.26 * _yScaling,480.562 * _xScaling,1018.98 * _yScaling,);
    path.cubicTo(480.562 * _xScaling,1018.98 * _yScaling,-67.0178 * _xScaling,979.52 * _yScaling,-67.0178 * _xScaling,979.52 * _yScaling,);
    path.cubicTo(-70.8738 * _xScaling,979.243 * _yScaling,-73.7745 * _xScaling,975.891 * _yScaling,-73.4966 * _xScaling,972.035 * _yScaling,);
    path.cubicTo(-73.4966 * _xScaling,972.035 * _yScaling,-51.9299 * _xScaling,672.743 * _yScaling,-51.9299 * _xScaling,672.743 * _yScaling,);
    path.cubicTo(-51.6481 * _xScaling,668.832 * _yScaling,-46.0909 * _xScaling,668.362 * _yScaling,-45.1565 * _xScaling,672.171 * _yScaling,);
    path.cubicTo(-22.4567 * _xScaling,764.694 * _yScaling,84.6598 * _xScaling,807.268 * _yScaling,164.68 * _xScaling,755.571 * _yScaling,);
    path.cubicTo(164.68 * _xScaling,755.571 * _yScaling,249.767 * _xScaling,700.601 * _yScaling,249.767 * _xScaling,700.601 * _yScaling,);
    path.cubicTo(327.222 * _xScaling,656.356 * _yScaling,421.094 * _xScaling,651.55 * _yScaling,502.663 * _xScaling,687.653 * _yScaling,);
    path.cubicTo(502.663 * _xScaling,687.653 * _yScaling,510.688 * _xScaling,691.205 * _yScaling,510.688 * _xScaling,691.205 * _yScaling,);
    path.cubicTo(510.985 * _xScaling,691.337 * _yScaling,511.168 * _xScaling,691.641 * _yScaling,511.145 * _xScaling,691.965 * _yScaling,);
    path.cubicTo(511.145 * _xScaling,691.965 * _yScaling,488.047 * _xScaling,1012.5 * _yScaling,488.047 * _xScaling,1012.5 * _yScaling,);
    path.cubicTo(488.047 * _xScaling,1012.5 * _yScaling,488.047 * _xScaling,1012.5 * _yScaling,488.047 * _xScaling,1012.5 * _yScaling,);
    return path;
  }
  
  
    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}