


import 'package:flutter/material.dart';
import 'package:mastering1/Pages/signup_details.dart';

import 'log_in.dart';

class Signup extends StatelessWidget {
  //const Signup({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget>[
              AnimatedContainer(duration: Duration(milliseconds: 500),
                curve:Curves.ease,
                height: MediaQuery.of(context).size.height * .4,
                child: CustomPaint(
                  painter: CurvePainter1(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:32,vertical: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget>[
                        Text(
                          "EXISTING USER?",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF1C1C1C),
                            height: 2,
                          ),
                        ),
                        SizedBox(height: 24,),
                        InkWell(
                          child:Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFF1C1C1C),
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [BoxShadow(
                                    color: Color(0xFF1C1C1C).withOpacity(.2),
                                    blurRadius: 4,
                                    spreadRadius: 3,
                                    offset: Offset(0,3)
                                )
                                ]
                            ),
                            child: Center(
                              child: Text("LOGIN",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF3D657),
                                ),),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                  child: SigUpDetails(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurvePainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint=Paint();
    paint.color=Colors.yellow;
    paint.style=PaintingStyle.fill;

    Path path=new Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width * .5, size.height - 110, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
