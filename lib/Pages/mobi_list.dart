


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mastering1/Pages/show_mobile_details.dart';

class MobiList extends StatelessWidget {
  final country;
  final imageLocation;
  final name;
  final weight;
  final battery;
  final ram;
  final display;
  late final price;

  MobiList(this.country,this.imageLocation,this.name,this.weight,this.battery,this.ram, this.display, this.price);
  @override
  Widget build(BuildContext context) {
    if(country=='Kuwait'){
      price= price * 4;
    }
    else if(country=='Syria'){
      price = price *2;
    }
    return InkWell(child: Container(
      height: 100,
      width: 100,
      child: Card(
        child: Row(
          children: <Widget>[
            Expanded(flex: 1, child: Image.asset(imageLocation)),
            Expanded(
                flex: 1,
                child:ListView(
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "descriptions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text("name:"),
                                Text(name)
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text("Weight (g):",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        color: Colors.black)),
                                Text(weight,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text("Battery capacity (mAh):",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        color: Colors.black)),
                                Text(battery,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text("RAM:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        color: Colors.black)),
                                Text(ram,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text("Display:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        color: Colors.black)),
                                Text(display,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text("Price:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        color: Colors.black)),
                                Text(price,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ) )
          ],
        ),
      ),
    ),
      onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return ShowMobileDetails(imageLocation, name,weight,battery,ram,display,price );
      }));
      },
    );

  }
}
