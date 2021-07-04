


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mastering1/Pages/MyDrawer.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categrios"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          leading: Icon(Icons.search),
          elevation: 5
      ),
      endDrawer: MyDrawer(),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          InkWell(child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("images/samsung.png",fit: BoxFit.cover,height: 180),
                Text("Samsung",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
            onTap: (){
            Navigator.of(context).pushNamed("samsung");
            },
          ),
          InkWell(child:Card(
            child: Column(
              children: <Widget>[
                Image.asset("images/huwai.jpg",fit: BoxFit.cover,height: 180,),
                Text("Huwai",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
              ],
            ),
          ),
          ),
          InkWell(child:Card(
            child: Column(
              children: <Widget>[
                Image.asset("images/oppo.jpg",fit: BoxFit.cover,height: 180,),
                Text("Oppo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
              ],
            ),
          ),
          ),
          InkWell(child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("images/realmi.png",fit: BoxFit.cover,height: 180,),
                Text("Realmi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
              ],
            ),
          ),
          ),
          InkWell(child:
          Card(
            child: Column(
              children: <Widget>[
                Image.asset("images/Xiaomi.png",fit: BoxFit.cover,height: 180,),
                Text("Xiaomi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
              ],
            ),
          ),
          ),

        ],
      ),
    );
  }
}
