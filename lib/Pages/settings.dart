

import 'package:flutter/material.dart';
import 'package:mastering1/Pages/MyDrawer.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
    );
  }
}
