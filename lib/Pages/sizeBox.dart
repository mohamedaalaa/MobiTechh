


import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeBoxStyle extends StatelessWidget {
  const SizeBoxStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:
      ListView(
        children: <Widget>[
          Container(
            height: 250.0,
            width: double.infinity,
            child: Carousel(
              images: [
                Image.asset('images/egypt.jpg', fit: BoxFit.cover),
                Image.asset('images/images.jpg', fit: BoxFit.cover),
                Image.asset('images/images.jpg', fit: BoxFit.cover)
              ],
              dotSize: 4,
              dotIncreaseSize: 2,
              dotSpacing: 20,
              dotColor: Colors.black,
              dotBgColor: Colors.blue,
              showIndicator: true,
              indicatorBgPadding: 25,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(3),
            child: Text("Categories",
                style: TextStyle(
                    color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  child: ListTile(
                      title: Image.asset("images/samsung.png"),
                      subtitle: Text("Samsung", textAlign: TextAlign.center)),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: ListTile(
                      title: Image.asset("images/Xiaomi.png"),
                      subtitle: Text("Xiaomi", textAlign: TextAlign.center)),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: ListTile(
                      title: Image.asset("images/realmi.png"),
                      subtitle: Text("Realmi", textAlign: TextAlign.center)),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: ListTile(
                      title: Image.asset("images/oppo.jpg"),
                      subtitle: Text("Oppo", textAlign: TextAlign.center)),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: ListTile(
                      title: Image.asset("images/huwai.jpg"),
                      subtitle: Text("Huwai", textAlign: TextAlign.center)),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(3),
            child: Text("Last Products",
                style: TextStyle(
                    color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left),
          ),
          Container(
              height: 400,
              child: GridView(
                primary: false,
                padding: const EdgeInsets.all(2),
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                children: <Widget>[
                  InkWell(child:ListTile(
                    title: Image.asset("images/p30.jpg"),
                    subtitle: Text("P30", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), textAlign: TextAlign.center),
                  ),onTap: (){} ),
                  InkWell(child:ListTile(
                    title: Image.asset("images/p30.jpg"),
                    subtitle: Text("P30", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), textAlign: TextAlign.center),
                  ) ,onTap: (){}),
                  InkWell(child:ListTile(
                    title: Image.asset("images/p30.jpg"),
                    subtitle: Text("P30", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), textAlign: TextAlign.center),
                  ),onTap:(){},),
                  InkWell(child:ListTile(
                    title: Image.asset("images/p30.jpg"),
                    subtitle: Text("P30", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), textAlign: TextAlign.center),
                  ),onTap:(){},),
                  InkWell(child: ListTile(
                    title: Image.asset("images/p30.jpg"),
                    subtitle: Text("P30", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), textAlign: TextAlign.center),
                  ),onTap:(){}),
                  InkWell(child:ListTile(
                    title: Image.asset("images/p30.jpg"),
                    subtitle: Text("P30", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), textAlign: TextAlign.center),
                  ),onTap:(){},),
                  InkWell(child:ListTile(
                    title: Image.asset("images/p30.jpg"),
                    subtitle: Text("P30", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black), textAlign: TextAlign.center),
                  ),onTap:(){},),
                ],
              )),
        ],
      ),
    );
  }
}
