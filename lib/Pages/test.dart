import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
    title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: SafeArea(
      child: Scaffold(
        body:Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("images/p30.jpg"),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Column(
                    children:<Widget>[
                    Text("Mohamed Alaa Shebl",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("Mohamed Alaa Shebl",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),)
                  ],),
                  Row(children: <Widget>[
                    Container(child: Icon(Icons.star,color: Colors.redAccent,)),
                    Text("41")
                  ],)
                ],),
              ),
              Container(padding:EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[
                  Column(children:<Widget>[
                    Icon(Icons.call,color: Colors.blue,),
                    Text("CALL",style: TextStyle(color: Colors.blue,fontSize: 15),)
                  ],),
                  Column(children:<Widget>[
                    Icon(Icons.alt_route,color: Colors.blue,),
                    Text("ROUTE",style: TextStyle(color: Colors.blue,fontSize: 15),)],),
                  Column(children:<Widget>[
                    Icon(Icons.share,color: Colors.blue,),
                    Text("SHARE",style: TextStyle(color: Colors.blue,fontSize: 15),)
                  ],),
                ],
              ),),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text("data"),
              )
            ],
          )
        )
        )
      ),
    );
  }
}
