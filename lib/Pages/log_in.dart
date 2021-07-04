import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mastering1/Pages/register.dart';

import 'LoginDetails.dart';

class HomeLoginPage extends StatelessWidget {
  const HomeLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _auth=FirebaseAuth.instance;
  late String email,password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C1C),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
               AnimatedContainer(duration:Duration(milliseconds: 500),
                //color: Colors.yellow,
               curve: Curves.ease,
                height:  MediaQuery.of(context).size.height*.6,
                child: CustomPaint(
                  painter: CurvePainter(),
                  child: Container(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                            child:LoginDetails()
                          ,)
                        ),
                      ),
                    ),
                  ),
                ),

            SizedBox(height: 120,),
            Text(
              "OR",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 1,
                color: Colors.yellow,
              ),
            ),
            SizedBox(height:50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:32,vertical: 16),
              child:InkWell(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [BoxShadow(
                          color: Colors.yellow.withOpacity(.2),
                          blurRadius: 4,
                          spreadRadius: 3,
                          offset: Offset(0,3)
                      )
                      ]
                  ),
                  child: Center(
                    child: Text("SIGN UP",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
              )

            ),
          ],
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var paint=Paint();
    paint.color = Color(0xFFF3D657);
    paint.style = PaintingStyle.fill;


    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.5,  size.height + 110 , size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
    // TODO: implement paint

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}
