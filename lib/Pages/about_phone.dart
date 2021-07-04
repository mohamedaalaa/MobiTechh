

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mastering1/Pages/MyDrawer.dart';

class AboutPhone extends StatelessWidget {
  const AboutPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("About Phone"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          leading: Icon(Icons.search),
          elevation: 5
      ),
      endDrawer: MyDrawer(),

    );
  }
}
