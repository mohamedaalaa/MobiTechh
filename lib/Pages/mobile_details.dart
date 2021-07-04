import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileDetails extends StatelessWidget {
  const MobileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Mobile Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            centerTitle: true,
          ),
          body: ListView(
            children: <Widget>[
              Container(
                  child: ListTile(
                title: Image.asset("images/p30.jpg"),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          color: Colors.black.withOpacity(.5),
                          child: Text(
                            "P30",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          color: Colors.black.withOpacity(.5),
                          child: Text(
                            "Price: 1200",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    )
                  ],
                ),
              )),
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
                              text: "Model",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: " :P30",
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
                          text: "Display",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: ":super Amoled 5.5",
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
                      "Ram",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " :6GB",
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
                          text: "Prices",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: "1200\$",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ))
            ],
          ),
        ));
  }
}
