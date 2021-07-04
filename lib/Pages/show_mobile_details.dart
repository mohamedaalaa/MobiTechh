
import 'package:flutter/material.dart';

class ShowMobileDetails extends StatelessWidget {
  final imageLocation;
  final name;
  final weight;
  final battery;
  final ram;
  final display;
  final price;



  ShowMobileDetails(this.imageLocation, this.name, this.weight, this.battery, this.ram, this.display, this.price);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("$name Mobile Details"),centerTitle: true,),
        body: ListView(
          children: <Widget>[
            Container(
                child: ListTile(
                  title: Image.asset(imageLocation),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            color: Colors.black.withOpacity(.5),
                            child: Text(
                              name,
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            color: Colors.black.withOpacity(.5),
                            child: Text(
                              "Weight: $weight",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      )
                    ],
                  ),
                )
            ),
            Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Description",
                        style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: "Battery",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: " :$battery",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ]),
                        ),
                      ),
                    ])),
            Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Ram",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: ":$ram",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                )),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Text(
                    "Display",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " :$display",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "Prices",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Prices : ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: price,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ))
          ],
        ),
      ),
    );

  }
}
