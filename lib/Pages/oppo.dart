



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'MyDrawer.dart';
import 'mobi_list.dart';

class Oppo extends StatefulWidget {
  const Oppo({Key? key}) : super(key: key);

  @override
  _OppoState createState() => _OppoState();
}

class _OppoState extends State<Oppo> {
  var country;
  getPref()async{
    SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
    country=sharedPreferences.getString("country");
  }

  @override
  void initState() {
    // TODO: implement initState
    getPref();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    List mobiList = [
      {
        'image': 'images/p30.jpg',
        'name': 'P30',
        'Weight (g)': '165.00',
        'Battery Capacity': '3650',
        'Ram': '6GB',
        'Display': 'Super Amoled 5.5',
        'Price': '1200\$'
      },
      {
        'image': 'images/p30.jpg',
        'name': 'S20',
        'Weight (g)': '160.00',
        'Battery Capacity': '4000',
        'Ram': '4GB',
        'Display': 'Super Amoled 5.5',
        'Price': '1000\$'
      }
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Samsung"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        endDrawer: MyDrawer(),
        body: ListView.builder(
            itemCount: mobiList.length,
            itemBuilder: (context , i){
              return MobiList(
                  mobiList[i][country],
                  mobiList[i]['image'],
                  mobiList[i]['name'],
                  mobiList[i]['Weight (g)'],
                  mobiList[i]['Battery Capacity'],
                  mobiList[i]['Ram'],
                  mobiList[i]['Display'],
                  mobiList[i]['Price']);
            }
        )
    );
  }
}

